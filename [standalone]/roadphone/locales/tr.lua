local Translations = {
    error = {},
    success = {},
    info = {
    ['openphone'] = 'Telefonu aç.',
    ['nophone'] = 'Telefonun yok.',
    ['noroadpods'] = 'You do not own roadpods.',
    ['day_saturday'] = 'Cumartesi',
    ['day_sunday'] = 'Pazar',
    ['day_monday'] = 'Pazartesi',
    ['day_tuesday'] = 'Salı	',
    ['day_wednesday'] = 'Çarşamba',
    ['day_thursday'] = 'Perşembe',
    ['day_friday'] = 'Cuma',
    ['radiojoined'] = '%{value} frekansına bağlandın.',
    ['fixphone'] = 'Eğer bu mesaj az sonra kaybolmazsa, /fixphone yaz.',
    ['message_app_new_message'] = '%{value} numaralı kişiden yeni bir mesajın var.',
    ["message_app_new_groupmessage"] = "Yeni grup mesajı",
    ['mail_received'] = " sana E-mail gönderdi.",
    ["billing_paid"] = "Fatura ödendi $",
    ["billing_notmoney"] = "Yeterli paran yok.",
    ['bill_paid'] = '$ tutarında',
    ['bill_paid2'] = 'faturanı ödendin.',
    ['society_bill_paid'] = '$ tutarında bir ',
    ['society_bill_paid2'] = 'fatura ödendi.',
    ['valet_car_delivered'] = "Araban %{value} $a",
    ['valet_car_delivered_2'] = "teslim edildi.",
    ['messages_app_newgroup_name'] = "Yeni grup",
    ["command_required_information"] = "Gerekli bilgileri doldurmadın.",
    ['wave_verify'] = "Kişiyi doğruladın.",
    ['wave_remove_verify'] = "Kişi artık doğrulanmış değil.",
    ['connect_verify'] = "Kişiyi doğruladın.",
    ['connect_remove_verify'] = "Kişi artık doğrulanmış değil.",
    ['crypto_error_buymore'] = "1$'dan daha yüksek bir tutara eşdeğer Kripto al.",
    ['crypto_error_sellmore'] = "'dan daha yüksek bir tutara eşdeğer Kripto sat.",
    ['crypto_error_nomoney'] = "Kripto almak için yerli paran yok.",
    ['crypto_error_nocrypto'] = "Satmak almak için yeterli kripton yok.",
    ['crypto_please_wait_sell'] = "Tekrar kripto satmak için bekle.",
    ['crypto_please_wait_buy'] = "Tekrar kripto almak için bekle.",
    ['bank_money_transaction'] = "%{value} adlı kişiye para yolladın.",
    ['control_center_already_in_use'] = "This number is already in use!",
    ['control_center_leave'] = "You left the control center for the %{value}!",
    ['control_center_take_control'] = "Press E to take over the control center for the %{value}.",
    ['control_center_taken_control'] = "You have taken over the control center for the %{value} !",
    ['control_center_cannot_leave'] = "You cannot currently leave the control center.",
    ['messages_groupchat_added'] = "You have been added to the %{value} group.",
    ['voice_memos_default_name'] = "New Recording",
    ['message_app_already_in_group'] = "You are already in this group."
},
text = {},
}

Lang = Locale:new({
phrases = Translations,
warnOnMissing = true
})