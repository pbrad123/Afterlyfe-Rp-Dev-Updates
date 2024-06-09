if Config.bcsCompanyManager then

    QBCore.Functions.CreateCallback('roadphone:getbilling', function(source, cb)
        local e = QBCore.Functions.GetPlayer(source)
        MySQL.Async.fetchAll('SELECT * FROM billings WHERE identifier = @identifier AND `status` = "unpaid"', {
            ["@identifier"] = e.PlayerData.citizenid
        }, function(result)
            local billingg = {}
            for i = 1, #result, 1 do
                local jobName = "None"
                jobName = result[i].company
                table.insert(billingg, {
                    id = result[i].id,
                    label = result[i].description,
                    sender = jobName,
                    target = result[i].biller_id,
                    amount = result[i].price
                })
            end
            cb(billingg)
        end)
    end)
elseif Config.JaksamBilling then
    QBCore.Functions.CreateCallback('roadphone:getbilling', function(source, cb)
        local e = QBCore.Functions.GetPlayer(source)
        MySQL.Async.fetchAll('SELECT * FROM billing WHERE identifier = @identifier', {
            ["@identifier"] = e.PlayerData.citizenid
        }, function(result)
            local billing = {}
            for i = 1, #result do
                local jobName = "None"
                if result[i].target_type == "society" then
                    jobName = result[i].target:gsub("society_", "")
                else
                    jobName = getNameFromIdentifier(result[i].sender)
                    if jobName == nil then
                        jobName = "Unkown"
                    end
                end
                table.insert(billing, {
                    id = result[i].id,
                    label = result[i].label,
                    sender = jobName,
                    target = result[i].target,
                    amount = result[i].amount
                })
            end
            cb(billing)
        end)
    end)

else

    QBCore.Functions.CreateCallback('roadphone:getbilling', function(source, cb)
        local e = QBCore.Functions.GetPlayer(source)
        MySQL.Async.fetchAll('SELECT * FROM phone_invoices WHERE citizenid = @identifier', {
            ["@identifier"] = e.PlayerData.citizenid
        }, function(result)
            local billing = {}
            for i = 1, #result, 1 do

                local sender = getNameFromIdentifier(result[i].sendercitizenid)
                if sender == nil then
                    sender = "Unkown"
                end
                table.insert(billing, {
                    id = result[i].id,
                    label = "Bill",
                    sender = sender,
                    target = result[i].citizenid,
                    amount = result[i].amount
                })
            end
            cb(billing)
        end)
    end)
end

QBCore.Functions.CreateCallback('roadphone:server:getbillingdata', function(source, cb, id)
    MySQL.Async.fetchAll('SELECT * FROM billing WHERE id = @id', {
        ['@id'] = id
    }, function(data)
        cb(data[1])
    end)
end)

if not Config.bcsCompanyManager then
    RegisterServerEvent("roadphone:server:payBill")
    AddEventHandler("roadphone:server:payBill", function(id)
        local src = source
        local xPlayer = QBCore.Functions.GetPlayer(src)

        MySQL.Async.fetchAll('SELECT * FROM phone_invoices WHERE id = @id', {
            ['@id'] = id
        }, function(data)

            local SenderPly = QBCore.Functions.GetPlayerByCitizenId(data[1].sendercitizenid)

            xPlayer.Functions.RemoveMoney('bank', data[1].amount, "paid-invoice")
            exports['qb-management']:AddMoney(data[1].society, data[1].amount)
            MySQL.Async.execute('DELETE FROM phone_invoices WHERE id = @id', {
                ['@id'] = id
            })

            TriggerClientEvent('roadpad:sendNotification', src, {
                apptitle = 'APP_BILLING_NAME',
                title = Lang:t('info.info.billing_paid') .. data[1].amount,
                img = '/public/img/app/Apps/billing.png'
            })

            if SenderPly then
                TriggerClientEvent('roadpad:sendNotification', SenderPly.PlayerData.source, {
                    apptitle = 'APP_BILLING_NAME',
                    title = Lang:t('info.info.billing_paid') .. data[1].amount,
                    img = '/public/img/app/Apps/billing.png'
                })
            end
        end)

        TriggerClientEvent('roadpad:updatebilling', src)
    end)

elseif Config.bcsCompanyManager then
    RegisterServerEvent("roadphone:server:payBill")
    AddEventHandler("roadphone:server:payBill", function(id)
        local src = source
        local xPlayer = QBCore.Functions.GetPlayer(src)

        MySQL.Async.fetchAll('SELECT * FROM billing WHERE id = @id', {
            ['@id'] = id
        }, function(data)

            local xTarget = QBCore.Functions.GetPlayerByCitizenId(data[1].sender)
            local target = data[1].biller_id
            local amount = data[1].price

            if xTarget then
                if amount then
                    if xPlayer.Functions.GetMoney('bank') >= amount then

                        MySQL.Async.execute('UPDATE billings SET `status`="paid" WHERE id = @id', {
                            ['@id'] = id
                        }, function(rowsChanged)
                            xTarget.Functions.AddMoney('bank', amount, 'bill received')
                            xPlayer.Functions.RemoveMoney('bank', amount, 'bill paid')

                            TriggerClientEvent('roadphone:sendNotification', src, {
                                apptitle = 'APP_BILLING_NAME',
                                title = Lang:t('info.billing_paid') .. amount,
                                img = '/public/img/Apps/billing.png'
                            })
                            TriggerClientEvent('roadphone:sendNotification', xTarget.PlayerData.source, {
                                apptitle = 'APP_BILLING_NAME',
                                title = Lang:t('info.billing_paid') .. amount,
                                img = '/public/img/Apps/billing.png'
                            })

                            TriggerClientEvent('roadphone:updatebilling', xPlayer.PlayerData.source)
                            TriggerClientEvent('roadphone:updatebilling', xTarget.PlayerData.source)

                        end)

                    else

                        TriggerClientEvent('roadphone:sendNotification', src, {
                            apptitle = 'APP_BILLING_NAME',
                            title = Lang:t('info.billing_nomoney') .. amount,
                            img = '/public/img/Apps/billing.png'
                        })

                    end

                else

                    TriggerClientEvent('roadphone:sendNotification', src, {
                        apptitle = 'APP_BILLING_NAME',
                        title = Lang:t('info.billing_nomoney') .. amount,
                        img = '/public/img/app/Apps/billing.png'
                    })
                end

            end
        end)
    end)
end

QBCore.Functions.CreateCallback('roadphone:server:getBillingIDS', function(source, cb)

    local xPlayer = QBCore.Functions.GetPlayer(source)

    if not xPlayer then
        return
    end

    MySQL.Async.fetchAll('SELECT id FROM billing WHERE identifier = @identifier', {
        ['@identifier'] = xPlayer.PlayerData.citizenid
    }, function(result)
        cb(result)
    end)

end)

if Config.JaksamBilling then
    AddEventHandler("billing_ui:onBillCreated",
        function(billId, senderIdentfier, targetIdentifier, amount, date, unixDate)
            local xPlayer = QBCore.Functions.GetPlayerByCitizenId(targetIdentifier)
            if xPlayer then
                TriggerClientEvent('roadphone:updatebilling', xPlayer.PlayerData.source)
            end
        end)
end
