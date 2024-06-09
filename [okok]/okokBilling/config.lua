Config, Locales = {}, {}

Config.Debug = false -- This help find the source of a problem 

Config.OnlyUnpaidCityInvoices = false

Config.OnlyUnpaidSocietyInvoices = false

Config.EventPrefix = 'okokBilling'

Config.Locale = 'en'

Config.DatabaseTable = 'okokbilling'

Config.OpenMenuKey = 168 -- Default 168 (F7)

Config.OpenMenuCommand = 'invoices' -- Command to open the menu

Config.UseOKOKNotify = true -- If set to true it will use okokNotify, if set to false it will use the QB notify

Config.UseOKOKBankingTransactions = false -- If set to true it will register the bills to okokBanking transactions

Config.InvoiceDistance = 15

Config.AllowPlayersInvoice = true -- if players can create Player to Player invoices

Config.okokRequests = false -- Player to Player invoices only, to avoid abuse

Config.AuthorReceivesAPercentage = true -- When sending a society invoice

Config.AuthorPercentage = 10 -- Percentage that the invoice author receives

Config.VATPercentage = 23

Config.SocietyReceivesLessWithVAT = false

Config.QBManagement = true -- If set to true it will use the qb-management resource, if set to false it will use the okokBanking database tables

Config.UseQBBanking = false -- Useful for latest QBCore versions

Config.SocietyHasSocietyPrefix = false -- *Do not touch this if the resource is working correctly* If set to true it'll search for `society_police` (example) when paying a society invoice

Config.AutoDeletePaidInvoices = true -- true: Deletes paid invoices (to reduce lag) | false: Doesn't delete paid invoices.

Config.DeletePaidInvoicesEvery = 30 -- How often it should delete the paid invoices (in minutes)

Config.AuthorReceiveNotification = false -- If set to true it will send a notification to the author when the invoice is paid

-- Autopay

Config.UseAutoPay = true

Config.DefaultLimitDate = 7 -- Days for limit pay date

Config.CheckForUnpaidInvoicesEvery = 30 -- minutes

Config.FeeAfterEachDay = true

Config.FeeAfterEachDayPercentage = 5

-- Autopay

Config.JobsWithCityInvoices = { -- Which jobs have City Invoices (They will be allowed to delete any invoice) | Admins will have access by default
	'court'
}

Config.CityInvoicesAccessRanks = { -- Which jobs have City Invoices (They will be allowed to delete any invoice)
	'' -- All of them have access
}

Config.AllowedSocieties = { -- Which societies can access the Society Invoices
	'police',
	'sast',
	'bcso',
	'doc',
	'sasp',
	'ambulance'
}

Config.InspectCitizenSocieties = { -- Which societies can access the Society Invoices
	'police',
	'sast',
	'bcso',
	'doc',
	'sasp'
}

Config.SocietyAccessRanks = { -- Which ranks of the society have access to Society Invoices and City Invoices
	'Boss',
	'Chief',
}

Config.BillsList = {
	['police'] = {
		{'High Speed', 550},
		{'Parking on bridge', 1200},
		{'Jumping a red light', 250},
		{'Driving dangerously', 750},
		{'Reckless driving', 1000},
		{'Custom'}, -- If set without a price it'll let the players create a custom invoice (custom price)
	},
	['ambulance'] = {
		{'Ambulance Ride', 550},
		{'Medical treatment 1', 750},
		{'Medical treatment 2', 1200},
		{'Medical treatment 3', 250},
		{'Medical treatment 4', 400},
	},
}

Config.AdminGroups = {
	'god',
	'admin',
	'mod',
}

-------------------------- DISCORD LOGS

-- To set your Discord Webhook URL go to sv_utils.lua, line 3

Config.BotName = 'Afterlyfe Billing' -- Write the desired bot name

Config.ServerName = 'Afterlyfe Rp' -- Write your server's name

Config.IconURL = 'https://cdn.discordapp.com/attachments/1221668883816251422/1223404746501783612/new_AfterLyfe_Rp_Logo.png?ex=6619bb75&is=66074675&hm=26bc3238140bdc92512fd2e9d0074d0d53e4b621757dd2134064670963aba887&' -- Insert your desired image link

Config.DateFormat = '%d/%m/%Y [%X]' -- To change the date format check this website - https://www.lua.org/pil/22.1.html

-- To change a webhook color you need to set the decimal value of a color, you can use this website to do that - https://www.mathsisfun.com/hexadecimal-decimal-colors.html

Config.CreatePersonalInvoiceWebhookColor = '65535'

Config.CreateJobInvoiceWebhookColor = '16776960'

Config.CancelInvoiceWebhookColor = '16711680'

Config.PayInvoiceWebhookColor = '65280'

-------------------------- LOCALES (DON'T TOUCH)

function _L(id) 
	if Locales[Config.Locale][id] then 
		return Locales[Config.Locale][id] 
	else 
		print('Locale '..id..' doesn\'t exist') 
	end 
end