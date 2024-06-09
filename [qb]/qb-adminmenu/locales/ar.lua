local Translations = {
    error = {
        blips_deactivated = 'تم اخفاء اماكن اللاعبين',
        names_deactivated = 'تم اخفاء اسماء اللاعبين',
        changed_perm_failed = 'اختر الصلاحيات',
        missing_reason = 'يجب أن تعطي سببا',
        invalid_reason_length_ban = 'يجب عليك إعطاء سبب و وقت الباند',
        no_store_vehicle_garage = 'لا يمكنك تخزين هذه السيارة في المرآب الخاص بك',
        no_vehicle = 'أنت لست في السيارة',
        no_weapon = 'ليس لديك سلاح في يديك',
        no_free_seats = 'السيارة لا تحتوي على مقاعد خالية',
        failed_vehicle_owner = 'هذه السيارة لك بالفعل',
        not_online = 'هذا اللاعب غير متصل',
        no_receive_report = 'أنت لا تتلقى تقارير',
        failed_set_speed = '(`fast` - سريع / `normal` - عادي) أنت لم تحدد السرعة',
        failed_set_model = 'لم تقم بتعيين نموذج',
        failed_entity_copy = 'لا توجد معلومات كيان مجانية لنسخها إلى الحافظة!',
    },
    success = {
        blips_activated = 'تم عرض اماكن اللاعبين على الخريطة',
        names_activated = 'تم تفعيل اسماء اللاعبين',
        coords_copied = 'تم نسخ الإحداثيات',
        heading_copied = 'تم نسخ العنوان',
        changed_perm = 'تغيرت صلاحياتك',
        entered_vehicle = 'دخلت السيارة',
        success_vehicle_owner = 'السيارة الآن لك',
        receive_reports = 'أنت تتلقى تقارير',
        entity_copy = 'تم نسخ معلومات الكيان المجانية إلى الحافظة!',
    },
    info = { -- you need font arabic --
        ped_coords = 'ﺕﺎﻴﺛﺍﺪﺣﺇ:',
        vehicle_dev_data = 'ﺓﺭﺎﻴﺴﻟﺍ ﺕﺎﻧﺎﻴﺑ',
        ent_id = 'ﻑﺮﻌﻤﻟﺍ: ',
        net_id = 'ﻱﺪﻳﻻﺍ: ',
        net_id_not_registered = 'غير مسجل',
        model = 'ﻉﻮﻨﻟﺍ: ',
        hash = 'ﺵﺎﻬﻟﺍ: ',
        eng_health = 'ﻙﺮﺤﻤﻟﺍ ﺔﺤﺻ: ',
        body_health = 'ﻢﺴﺠﻟﺍ ﺔﺤﺻ: ',
        go_to = 'الانتفال اليه',
        remove = 'حدف',
        confirm = 'تأكيد',
        reason_title = 'السبب',
        length = 'المدة',
        options = 'اعدادات',
        position = 'المكان',
        your_position = 'الى مكانك',
        open = 'فتح',
        inventories = 'الاختبارات',
        reason = 'يجب ان تكتب السبب',
        give = 'اعطاء',
        id = 'الأيدي:',
        player_name = 'اسم اللاعب',
        obj = 'Obj',
        ammoforthe = '%{weapon} ذخيرة ل +%{value}',
        kicked_server = 'لقد تم طردك من الخادم',
        check_discord = '🔸 تحقق من الديسكورد لمزيد من المعلومات: ',
        banned = 'لقد تم حظرك:',
        ban_perm = '\n\nحظرك دائم.\n🔸 تحقق من الديسكورد لمزيد من المعلومات: ',
        ban_expires = '\n\nانتهاء الحظر: ',
        rank_level = 'مستوى الإذن الخاص بك الآن ',
        admin_report = 'ابلاغ - ',
        staffchat = 'الإدارة - ',
        warning_chat_message = '^7 لقد تم تحذيرك من قبل ',
        warning_staff_message = '^7 لقد حذرت ',
        no_reason_specified = 'لا يوجد سبب محدد',
        server_restart = 'إعادة تشغيل الخادم. لمزيد من المعلومات: ',
        object_view_distance = 'مسافة عرض الكيان مضبوطة على:٪ {مسافة} متر',
        object_view_info = 'معلومات الكيان',
        object_view_title = 'وضع الكيانات الحرة',
        object_freeaim_delete = 'حذف الكيان',
        object_freeaim_freeze = 'تجميد الكيان',
        object_frozen = 'مجمد',
        object_unfrozen = 'غير مجمدة',
        model_hash = 'نموذج التجزئة:',
        obj_name = 'اسم الكائن:',
        ent_owner = 'مالك الكيان:',
        cur_health = 'الصحة الحالية:',
        max_health = 'أقصى صحة:',
        armor = 'Armor:',
        rel_group = 'مجموعة العلاقات:',
        rel_to_player = 'العلاقة باللاعب:',
        rel_group_custom = 'علاقة مخصصة',
        ign_acceleration = 'تسريع:',
        ign_cur_gear = 'العتاد الحالي:',
        ign_speed_kph = 'Kph:',
        ign_speed_mph = 'ميل في الساعة:',
        ign_rpm = 'Rpm:',
        dist_to_obj = 'Dist:',
        obj_heading = 'العنوان:',
        obj_coords = 'مجموعات:',
        obj_rot = 'الدوران:',
        obj_velocity = 'السرعة:',
        obj_unknown = 'غير معروف',
        you_have = 'لديك',
        freeaim_entity = 'الكيان المجاني',
        object_del = 'الكيان محذوف',
        object_del_error = 'خطأ في حذف الكيان',
    },
    menu = {
        admin_menu = 'قائمة الأدمن',
        admin_options = 'إعدادات الأدمن',
        online_players = 'اللاعبين المتصلين',
        manage_server = 'إدارة السرفر',
        weather_conditions = 'خيارات الطقس',
        dealer_list = 'قائمة التاجر',
        ban = 'باند',
        kick = 'طرد',
        permissions = 'الصلاحيات',
        developer_options = 'خيارات للمطور',
        vehicle_options = 'اعدادات السيارات',
        vehicle_categories = 'فئات السيارات',
        vehicle_models = 'نماذج المركبات',
        player_management = 'إدارة اللاعب',
        server_management = 'إدارة الخادم',
        vehicles = 'السيارات',
        noclip = 'الطيران',
        revive = 'انعاش',
        invisible = 'اختفاء',
        god = 'غود مود',
        names = 'الاسماء',
        blips = 'الاماكن',
        weather_options = 'خيارات الطقس',
        server_time = 'وقت الخادم',
        time = 'الوقت',
        copy_vector3 = 'vector3 نسخ',
        copy_vector4 = 'vector4 نسخ',
        display_coords = 'عرض الاحداثيات',
        copy_heading = 'Heading نسخ',
        vehicle_dev_mode = 'وضع تطوير السيارة',
        spawn_vehicle = 'سباون سيارة',
        fix_vehicle = 'تصليح السيارة',
        buy = 'شراء',
        remove_vehicle = 'حدف السيارة',
        edit_dealer = 'تعديل البائع ',
        dealer_name = 'اسم البائع',
        category_name = 'اسم التصانيف',
        kill = 'قتل',
        freeze = 'تجميد',
        spectate = 'مراقبة',
        bring = 'سحب',
        sit_in_vehicle = 'ضع في السيارة',
        open_inv = 'فتح الحقيبة',
        give_clothing_menu = 'فتح قائمة الملابس',
        entity_view_options = 'وضع طريقة عرض الكيان',
        entity_view_distance = 'تعيين مسافة العرض',
        entity_view_freeaim = 'وضع الهدف الحر',
        entity_view_peds = 'عرض البيديستيريين',
        entity_view_vehicles = 'عرض المركبات',
        entity_view_objects = 'عرض الكائنات',
        entity_view_freeaim_copy = 'نسخ معلومات الكيان المجانية',
    },
    desc = {
        admin_options_desc = 'خيارات المسؤول',
        player_management_desc = 'اعرض قائمة اللاعبين',
        server_management_desc = 'خيارات الخادم',
        vehicles_desc = 'خيارات السيارة',
        dealer_desc = 'قائمة التجار الحاليين',
        noclip_desc = 'تمكين / تعطيل الطيران',
        revive_desc = 'إحياء نفسك',
        invisible_desc = 'تمكين / تعطيل الاختفاء',
        god_desc = 'تمكين / تعطيل الغود مود',
        names_desc = 'تمكين / تعطيل الأسماء ',
        blips_desc = 'تمكين / تعطيل اللاعبين في الخريطة',
        weather_desc = 'تغيير الطقس',
        developer_desc = 'خيارات التطوير',
        vector3_desc = 'vector3 نسخ',
        vector4_desc = 'vector4 نسخ',
        display_coords_desc = 'إظهار الأحداثيات',
        copy_heading_desc = 'Heading نسخ',
        vehicle_dev_mode_desc = 'عرض معلومات السيارة',
        delete_laser_desc = 'تمكين / تعطيل الليزر',
        spawn_vehicle_desc = 'سباون سيارة',
        fix_vehicle_desc = 'Fix the vehicle you are in',
        buy_desc = 'Buy the vehicle for free',
        remove_vehicle_desc = 'أصلح السيارة التي أنت فيها',
        dealergoto_desc = 'الانتقال الى البائع',
        dealerremove_desc = 'إزالة التاجر',
        kick_reason = 'سبب الطرد',
        confirm_kick = 'تأكيد الطرد',
        ban_reason = 'سبب الباند',
        confirm_ban = 'تأكيد الباند',
        sit_in_veh_desc = 'اجلس في',
        sit_in_veh_desc2 = ' سيارة',
        clothing_menu_desc = 'امنح قائمة الملابس لـ ',
        entity_view_desc = 'عرض معلومات حول الكيانات',
        entity_view_freeaim_desc = 'تمكين / تعطيل معلومات الكيان عبر مجانية',
        entity_view_peds_desc = 'تمكين / تعطيل معلومات البدن في العالم',
        entity_view_vehicles_desc = 'تمكين / تعطيل معلومات السيارة في العالم',
        entity_view_objects_desc = 'تمكين / تعطيل معلومات الكائن في العالم',
        entity_view_freeaim_copy_desc = 'نسخ معلومات كيان الهدف المجاني',
    },
    time = {
        ban_length = 'وقت الباند',
        onehour = 'ساعة',
        sixhour = '6س',
        twelvehour = '12س',
        oneday = 'يوم',
        threeday = '3ي',
        oneweek = 'أسبوع',
        onemonth = 'شهر',
        threemonth = '3ش',
        sixmonth = '6ش',
        oneyear = 'سنة',
        permanent = 'نهائيا',
        self = 'محدد',
        changed = '%{time}:00 تغير الوقت إلى',
    },
    weather = {
        extra_sunny = 'مشمس قوي',
        extra_sunny_desc = 'انا اذوب',
        clear = 'صافي',
        clear_desc = 'يوم مثالي',
        neutral = 'طبيعي',
        neutral_desc = 'مجرد يوم عادي',
        smog = 'ضبابي',
        smog_desc = 'آلة الدخان',
        foggy = 'ضبابي قوي',
        foggy_desc = 'x2 آلة الدخان',
        overcast = 'غائم',
        overcast_desc = 'لا مشمس جدا',
        clouds = 'سحاب',
        clouds_desc = 'أين الشمس',
        clearing = 'صافية بحدة',
        clearing_desc = 'تبدأ الغيوم في الإزالة',
        rain = 'ممطر',
        rain_desc = 'دعها تمطر',
        thunder = 'مرعد',
        thunder_desc = 'صوت الرعد',
        snow = 'ثلج',
        snow_desc = 'هل الجو بارد هنا',
        blizzard = 'ثلجي قوي',
        blizzed_desc = 'آلة الثلج',
        light_snow = 'ثلوج خفيفة',
        light_snow_desc = 'بدأت تشعر وكأنها عيد الميلاد',
        heavy_snow = 'ثلوج كثيفة',
        heavy_snow_desc = 'حرب كرات الثلج',
        halloween = 'الهالوين',
        halloween_desc = 'ما كان هذا الضجيج',
        weather_changed = 'تم التغير الى %{value}',
    },
    commands = {
        blips_for_player = 'إظهار مكان اللاعبين (المسؤول فقط)',
        player_name_overhead = 'إظهار اسماء اللاعبين (المسؤول فقط)',
        coords_dev_command = 'تمكين عرض الإحداثيات  (المسؤول فقط)',
        toogle_noclip = 'تفعيل/الغاء الطيران (المسؤول فقط)',
        save_vehicle_garage = 'حفظ السيارة في الغراج لتصبح ملك لك (المسؤول فقط)',
        make_announcement = 'نشر إعلان (المسؤول فقط)',
        open_admin = 'فتح قائمة المسؤول (المسؤول فقط)',
        staffchat_message = 'إرسال رسالة إلى جميع المشرفين (المسؤول فقط)',
        nui_focus = 'اعطاء و اخفاء الفوكس (المسؤول فقط)',
        warn_a_player = 'تحذير لاعب (المسؤول فقط)',
        check_player_warning = 'تحقق من تحذيرات اللاعب (المسؤول فقط)',
        delete_player_warning = 'حذف تحذيرات اللاعبين (المسؤول فقط)',
        reply_to_report = 'الرد على تقرير (المسؤول فقط)',
        change_ped_model = 'تغيير نموذج السكين (المسؤول فقط)',
        set_player_foot_speed = 'تعيين سرعة الطياران (المسؤول فقط)',
        report_toggle = 'تبديل التقارير الواردة (المسؤول فقط)',
        kick_all = 'طرد كل اللاعبين',
        ammo_amount_set = 'قم بتعيين الذخيرة (المسؤول فقط)',
    }
}

if GetConvar('qb_locale', 'en') == 'ar' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end
