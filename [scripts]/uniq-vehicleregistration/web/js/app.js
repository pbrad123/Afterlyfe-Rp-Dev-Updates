var items = [];
var cards
var inputValue = '';
var luxuryPrice, regularPrice = 0;
let selectedRowId = null;
let MenuArgs = [];
let plateLevel = "REGULAR";

window.addEventListener('message', function(event) {
    let item = event.data;
    if (item.type === "show") {
        if (item.status == true) {
            $("#main").fadeIn();
            document.getElementById("plateinput").setAttribute('value', item.plate);
            inputValue = item.plate;
            luxuryPrice = item.luxPrice;
            regularPrice = item.regPrice;
        } else {
            $("#main").fadeOut("fast");
        }
    } else if (item.type === "add_cards") {
        $(".platewrapper").html("");
        $.post(`https://${GetParentResourceName()}/get_cards`, JSON.stringify({}), function(items){
            Populate_Cards(items)
            cards = items
        });
    } else if (item.type == 'registerMenu'){
        let data = event.data.data;
        $('.menu').html("");
        $(`.menu`).fadeIn("slow");
        $(`.menu`).append(`
            <div class="m-wrapper">
                <h1 class="m-label">SELECT THE PLATES</h1>
                <div class="m-menu">
                </div>
                <div class="m-buttons">
                    <button type="submit" class="m-sb">SUBMIT</button>
                    <button type="close" class="m-cl">CANCEL</button>
                </div>
            </div>
        `);

        if(data.menu != null){
            for(let i = 0; i < data.menu.length; i++){
                $('.m-menu').append(`
                    <div class="m-row row-${data.id}" id='${i}'>
                        ${data.menu[i].label}
                    </div>
                `);
                MenuArgs[i] = data.menu[i].args
            };
        };

        $(`.m-sb`).on('click', function(){
            $(`.menu`).fadeOut();
            $.post(`https://${GetParentResourceName()}/onSubmitMenu`, JSON.stringify({
                args: MenuArgs[selectedRowId]
            }));
        });
        
        $(`.m-cl`).on('click', function(){
            $(`.menu`).fadeOut();
            $.post(`https://${GetParentResourceName()}/onCancelMenu`);
        });
        
        $(`.row-${data.id}`).on('click', function(){
            if(selectedRowId == null){
                var elems = document.getElementsByClassName('m-row');
                for (var i=0; i <elems.length;i+=1){
                elems[i].classList.remove('active');
                }
                $(this).addClass('active');
                selectedRowId = $(this).attr('id');
            }else{
                selectedRowId = null;
                $(this).removeClass('active');
            }
        });
    }
});

$(function(){
    $('#main').hide();
    $('.menu').hide();

    $(document).keyup(function(e) {
        if (e.key === "Escape") { 
            $("#main").fadeOut("fast");
            $(".menu").fadeOut("fast");
            $.post(`https://${GetParentResourceName()}/onCancelMenu`);
            $.post(`https://${GetParentResourceName()}/close`);
        }
    });

    $('#selllicense').on('click', function(){
        $('#main').fadeOut("fast");
        $.post(`https://${GetParentResourceName()}/sell_plates`);
    });

    
    $(`#buylicense`).on('click', function() {
        let plateframe = document.getElementById("plateinput").value;
        $.post(`https://${GetParentResourceName()}/buy_random_plates`, JSON.stringify({
            plateframe: plateframe,
            level: plateLevel,
        }));
        
        $("#main").fadeOut("fast");
    });
})

function input_changed() {
    var value = document.getElementById("plateinput").value;
    if (value == inputValue) {
        plateLevel = "REGULAR";
        document.getElementById("plate_type").innerHTML = "REGULAR";
        document.getElementById("plate_cost").innerHTML = '$' + regularPrice.toLocaleString('en-US');
    } else {
        plateLevel = "LUXURY";
        document.getElementById("plate_type").innerHTML = "LUXURY";
        document.getElementById("plate_cost").innerHTML = '$' + luxuryPrice.toLocaleString('en-US');
    }
}

Populate_Cards = function(items) {
    if (items !== null && items !== undefined && items !== "" && items.length > 0) {

        $.each(items, function(i, item) {
            let itemHTML = `
                <div class="plate-row" id="item-${item.id}">
                    <div class="plateframe" id="plateframe-${item.id}">${item.plate}</div>
                    <div class="buyplates">
                        <h2 class="plate-price">$` + item.price.toLocaleString('en-US') + `</h2>
                        <div id="buy-btn-${item.id}" class="buy-btn">BUY</div>
                    </div>
                </div>
            `
            $(".platewrapper").append(itemHTML);

            $(`#buy-btn-${item.id}`).on('click', function() {
                let plateframe = $(`#plateframe-${item.id}`).text();
                $.post(`https://${GetParentResourceName()}/buy_plates`, JSON.stringify({
                    value: item,
                    plateframe: plateframe
                }));
                
                $("#main").fadeOut("fast");
            });
        });
    }
}
