Config = Config or {}

Config.UsingPsHousing = false
Config.UsingDefaultQBApartments = true
Config.OnlyShowOnDuty = true
Config.UseCQCMugshot = true

-- Front, Back Side. Use 4 for both sides, we recommend leaving at 1 for default.
Config.MugPhotos = 1

-- If set to true = Fine gets automatically removed from bank automatically charging the player.
-- If set to false = The fine gets sent as an Invoice to their phone and it us to the player to pay for it, can remain unpaid and ignored.
Config.BillVariation = true

-- If set to false (default) = The fine amount is just being removed from the player's bank account
-- If set to true = The fine amount is beeing added to the society account after being removed from the player's bank account
Config.QBBankingUse = true

-- Set up your inventory to automatically retrieve images when a weapon is registered at a weapon shop or self-registered.
-- If you're utilizing lj-inventory's latest version from GitHub, no further modifications are necessary. 
-- However, if you're using a different inventory system, please refer to the "Inventory Edit | Automatic Add Weapons with images" section in ps-mdt's README.
Config.InventoryForWeaponsImages = "qb-inventory"

-- "LegacyFuel", "lj-fuel", "ps-fuel"
Config.Fuel = "LegacyFuel"

-- Google Docs Link
Config.sopLink = {
    ['police'] = 'https://docs.google.com/spreadsheets/d/1jlEGXJhdH6ftqie2oZNEeTi40WHAnNdN7EyFQxGVb-8/edit?usp=sharing',
    ['ambulance'] = '',
    ['bcso'] = 'https://docs.google.com/spreadsheets/d/1jlEGXJhdH6ftqie2oZNEeTi40WHAnNdN7EyFQxGVb-8/edit?usp=sharing',
    ['doj'] = '',
    ['sast'] = 'https://docs.google.com/spreadsheets/d/1jlEGXJhdH6ftqie2oZNEeTi40WHAnNdN7EyFQxGVb-8/edit?usp=sharing',
    ['sasp'] = '',
    ['doc'] = '',
    ['lssd'] = '',
    ['sapr'] = '',
    ['police1'] = '',	
    ['police2'] = ''
}

-- Google Docs Link
Config.RosterLink = {
    ['police'] = 'https://docs.google.com/spreadsheets/d/1Kziye6UE7at_CsPgF9iGXDv0PE79ZZ50zjdzJvZRp3I/edit?usp=sharing',
    ['ambulance'] = '',
    ['bcso'] = 'https://docs.google.com/spreadsheets/d/1eWYjm7EbLUoQ4bXipQso5y32nNwFVQIg4Cdk7d1l_U8/edit?usp=sharing',
    ['doj'] = '',
    ['sast'] = 'https://docs.google.com/spreadsheets/d/18DhASdNVvdbPLAY9xfNZnn_iUyNTkqGoE-ji77mMxBY/edit?usp=sharing',
    ['sasp'] = '',
    ['doc'] = 'https://docs.google.com/spreadsheets/d/14Wyut8JL2Hr2urCNo3Z3NZcJFkOclYfE1yNEArbrASA/edit?usp=sharing',
    ['lssd'] = '',
    ['sapr'] = '',
    ['police1'] = '',	
    ['police2'] = ''
}

Config.PoliceJobs = {
    ['police'] = true,
    ['lspd'] = true,
    ['bcso'] = true,
    ['sast'] = true,
    ['sasp'] = true,
    ['doc'] = true,
    ['lssd'] = true,
    ['sapr'] = true,
    ['pa'] = true,
    ['fbi'] = true,
    ['police1'] = true,
    ['police2'] = true,
    ['fbi'] = true
}

Config.AmbulanceJobs = {
    ['ambulance'] = true,
    ['doctor'] = true
}

Config.DojJobs = {
    ['lawyer'] = true,
    ['judge'] = true
}

-- This is a workaround solution because the qb-menu present in qb-policejob fills in an impound location and sends it to the event. 
-- If the impound locations are modified in qb-policejob, the changes must also be implemented here to ensure consistency.

Config.ImpoundLocations = {
    [1] = vector4(436.68, -1007.42, 27.32, 180.0),
    [2] = vector4(-436.14, 5982.63, 31.34, 136.0),
}

-- Support for Wraith ARS 2X. 

Config.UseWolfknightRadar = false
Config.WolfknightNotifyTime = 5000 -- How long the notification displays for in milliseconds (30000 = 30 seconds)
Config.PlateScanForDriversLicense = true -- If true, plate scanner will check if the owner of the scanned vehicle has a drivers license

-- IMPORTANT: To avoid making excessive database queries, modify this config to true 'CONFIG.use_sonorancad = true' setting in the configuration file located at 'wk_wars2x/config.lua'. 
-- Enabling this setting will limit plate checks to only those vehicles that have been used by a player.

Config.LogPerms = {
	['ambulance'] = {
		[4] = true,
	},
	['police'] = {
		[4] = true,
	},
    ['bcso'] = {
		[4] = true,
	},
    ['sast'] = {
		[4] = true,
	},
    ['sasp'] = {
		[4] = true,
	},
    ['sapr'] = {
		[4] = true,
	},
    ['doc'] = {
		[4] = true,
	},
    ['lssd'] = {
		[4] = true,
	},
    ['fbi'] = {
		[4] = true,
	},
    ['police1'] = {
		[4] = true,
	},
    ['police2'] = {
		[4] = true,
	}
}

Config.RemoveIncidentPerms = {
	['ambulance'] = {
		[4] = true,
	},
	['police'] = {
		[4] = true,
	},
    ['bcso'] = {
		[4] = true,
	},
    ['sast'] = {
		[4] = true,
	},
    ['sasp'] = {
		[4] = true,
	},
    ['sapr'] = {
		[4] = true,
	},
    ['doc'] = {
		[4] = true,
	},
    ['lssd'] = {
		[4] = true,
	},
    ['fib'] = {
		[4] = true,
	},
    ['police1'] = {
		[4] = true,
	},
    ['police2'] = {
		[4] = true,
	}
}

Config.RemoveReportPerms = {
	['ambulance'] = {
		[4] = true,
	},
	['police'] = {
		[4] = true,
	},
    ['bcso'] = {
		[4] = true,
	},
    ['sast'] = {
		[4] = true,
	},
    ['sasp'] = {
		[4] = true,
	},
    ['sapr'] = {
		[4] = true,
	},
    ['doc'] = {
		[4] = true,
	},
    ['lssd'] = {
		[4] = true,
	},
    ['fbi'] = {
		[4] = true,
	},
    ['police1'] = {
		[4] = true,
	},
    ['police2'] = {
		[4] = true,
	}
}

Config.RemoveWeaponsPerms = {
	['police'] = {
		[4] = true,
	},
    ['bcso'] = {
		[4] = true,
	},
    ['sast'] = {
		[4] = true,
	},
    ['sasp'] = {
		[4] = true,
	},
    ['sapr'] = {
		[4] = true,
	},
    ['doc'] = {
		[4] = true,
	},
    ['lssd'] = {
		[4] = true,
	},
    ['fbi'] = {
		[4] = true,
	},
    ['police1'] = {
		[4] = true,
	},
    ['police2'] = {
		[4] = true,
	}
}

Config.PenalCodeTitles = {
    [1] = '(A) Penal Code',
    [2] = '(B) VIOLENT CRIME CODE',
    [3] = '(C) Public Order',
    [4] = '(D) Property Crime Code',
    [5] = '(E) Vehicle Code',
    [6] = '(F) Comercial Vehicle Code',
    [7] = '(G) Parking Code',
    [8] = '(H) Wildlife Code',
}

Config.PenalCode = {
    [1] = {
        [1] = {title = 'Resisting Arrest', class = 'Felony', id = 'P.C. 1.1', months = 10, fine = 1000, color = 'red', description = 'Willfully refusing to be detained/placed under arrest by a law enforcement official while in the performance of their official duties.'},
	    [2] = {title = 'Disobeying a Police Officer', class = 'Misdemeanor', id = 'P.C. 1.2', months = 5, fine = 100, color = 'orange', description = 'Willfully refusing or failing to comply with a lawful order, signal, or direction of any identifiable peace officer or police officer, while detained, or while a police officer is attempting to detain a subject.'},
        [3] = {title = 'Second Degree Harassment', class = 'Infraction', id = 'P.C. 1.3', months = 0, fine = 1000, color = 'green', description = 'is the act of intimidating or pressuring another person aggressively with unwelcome words, deeds, actions, or gestures.'},
        [4] = {title = 'First Degree Harrassment', class = 'Misdemeanor', id = 'P.C. 1.3.1', months = 5, fine = 2000, color = 'orange', description = 'repeatedly harassing another person by following such person in or about a public place or places or by repeatedly committing acts which causes such person to reasonably fear for their physical safety.'},
        [5] = {title = 'Lying to a Government Official', class = 'Misdemeanor', id = 'P.C. 1.4', months = 5, fine = 500, color = 'orange', description = 'Any person who lies to a government official while possessing clear knowledge that the person being lied to is in fact a government official'},
	    [6] = {title = 'Reckless Endangerment', class = 'Misdemeanor', id = 'P.C. 1.5.1', months = 15, fine = 1500, color = 'orange', description = 'acts that create a substantial risk of serious physical injury to another person'},
	    [7] = {title = 'Reckless Endangerment involving a deadly weapon', class = 'Felony', id = 'P.C. 1.5.2', months = 25, fine = 2500, color = 'red', description = 'acts that create a substantial risk of serious physical injury to another person involving a deadly weapon'},
        [8] = {title = 'Forgery', class = 'Felony', id = 'P.C. 1.6', months = 20, fine = 2000, color = 'red', description = 'Possessing or creating false government documents including, but not limited to, ID cards, license plates, passports, etc.'},
        [9] = {title = 'Criminal Threats', class = 'Misdemeanor', id = 'P.C. 1.7', months = 10, fine = 500, color = 'Orange', description = '"one threatens to kill or physically harm another person.'},      
        [10] = {title = 'Threats Against an Elected Official (Fed)', class = 'Felony', id = 'P.C. 1.8', months = 65, fine = 20000, color = 'red', description = 'To say, tweet, post online, or planning any threats against an active elected official, with intent/ ability to harm or carry out those threats'},      
        [11] = {title = 'Identity Theft', class = 'Felony', id = 'P.C. 1.9', months = 20, fine = 3000, color = 'red', description = 'Impersonating another person that could make the impersonated person civilly or criminally liable, signing under a false name, using the documentation of another person, or using forged documentation of another person.'},       
        [12] = {title = 'Impersonating a Police Officer', class = 'Felony', id = 'P.C. 1.10', months = 30, fine = 4000, color = 'red', description = 'Any person who willfully wears, exhibits, or uses the uniform, insignia, emblem/logo, device, label, certificate, card, badge, or title, of a peace officer, with the intent of fraudulently impersonating'},
        [13] = {title = 'Impersonating a Federal Officer/Agent (Fed)', class = 'Felony', id = 'P.C. 1.11', months = 35, fine = 5000, color = 'green', description = 'Any person who willfully wears, exhibits, or uses the authorized uniform, insignia, emblem, device, label, certificate, card, or writing, of a Federal peace officer and or agent, with the intent of fraudulently impersonating'},        
	    [14] = {title = 'Aiding and Abetting/Accessory', class = 'Misdemeanor', id = 'P.C. 1.12', months = 10, fine = 1000, color = 'orange', description = 'To knowingly assist, aid, or help in the commission of a crime including but not limited to providing: financial support, advice, transportation, or equipment'},
	    [15] = {title = 'Failure to Obey Signage', class = 'Infraction', id = 'P.C. 1.13', months = 0, fine = 200, color = 'green', description = 'When on public property or an implicitly public area, persons must obey posted regulatory signs and signals'},
        [16] = {title = 'Terrorism (Fed)', class = 'Felony', id = 'P.C. 1.14', months = 70, fine = 10000, color = 'red', description = 'Killing or physically harming the general public, causing significant damage, mass destruction using explosives, weapons of mass destruction, causing illness using biological weapons, or other extreme violence against the general public.'},
        [17] = {title = 'Terroristic Treats (Fed)', class = 'Felony', id = 'P.C. 1.15', months = 40, fine = 8000, color = 'red', description = 'AWhen one threatens to kill or physically harm the general public, or when one threatens to cause significant damage, mass destruction using explosives, weapons of mass destruction, cause illness using biological weapons, or other extreme violence against the general public.'},
        [18] = {title = 'Jailbreak', class = 'Felony', id = 'P.C. 1.16.1', months = 20, fine = 6000, color = 'red', description = 'Breaks into government buildings designated for detainment or imprisonment with intent to break a prisoner out.'},        
	    [19] = {title = 'Escaping Custody', class = 'Felony', id = 'P.C. 1.16.2', months = 15, fine = 5000, color = 'red', description = 'Escapes the custody of the government. It is unlawful for any person who has been lawfully arrested by any peace officer and who knows, or by the exercise of reasonable care should have known, that he or she has been so arrested, to thereafter escape or attempt to escape from that peace officer.'},
	    [20] = {title = 'Possession of Items Used in a Crime', class = 'infraction', id = 'P.C. 1.17', months = 0, fine = 200, color = 'orange', description = 'Possession of any item or tool used to enact or commit a felony or misdemeanor.'},
	    [21] = {title = 'Disarming a Police Officer', class = 'Felony', id = 'P.C. 1.18', months = 20, fine = 7000, color = 'red', description = 'It shall be unlawful for any person to remove, or attempt to remove, any firearm, taser, baton, pepper spray, chemical agent, handcuff, radio, or communication device from the possession of a clearly and reasonably identifiable peace officer. '},
	    [22] = {title = 'Entrapment', class = 'Misdemeanor', id = 'P.C. 1.19', months = 10, fine = 2000, color = 'orange', description = 'Entrapment is: to encourage the conduction of a crime which would have otherwise been not committed by that individual.'},
	    [23] = {title = 'Harboring a Fugitive', class = 'infraction', id = 'P.C. 1.20', months = 15, fine = 2000, color = 'orange', description = 'Any person who intentionally and willfully hides the whereabouts of, attempts to prevent the discovery of, or knowingly misleads law enforcement searching for the wanted suspect.'},
	    [24] = {title = 'Deprivation fo Rights Under Color of Law (Fed)', class = 'Felony', id = 'P.C. 1.21', months = 20, fine = 7000, color = 'red', description = 'It is a crime for a person acting under color of any law to willfully deprive a person of a right or privilege protected by the Constitution or laws of San Andreas.'},
    },
    [2] = {
        [1] = {title = 'First Degree Murder', class = 'Felony', id = 'P.C.2.1', months = 30, fine = 5000, color = 'red', description = 'First Degree Murder is the crime of intentionally killing another person with premeditation'},
        [2] = {title = 'Attempted Murder', class = 'Felony', id = 'P.C.2.2 ', months = 15, fine = 5000, color = 'red', description = 'demonstration of an intent to murder.'},
        [3] = {title = 'Attempted Murder of an Elected Official (Fed)', class = 'Felony', id = 'P.C.2.3 ', months = 30, fine = 15000, color = 'red', description = 'Attempting to kill an active elected official'},
        [4] = {title = 'Second Degree Murder', class = 'Felony', id = 'P.C.2.4 ', months = 25, fine = 4500, color = 'red', description = 'A person commits this crime by killing another human being during a sudden quarrel, in the heat of passion, or based on an honest but unreasonable belief in the need to defend oneself.'},
        [5] = {title = 'Vehicular Manslaughter', class = 'Felony', id = 'P.C.2.5 ', months = 20, fine = 5000, color = 'red', description = 'Vehicular Manslaughter is a felony that involves the death of a person as a result of either criminally negligent or murderous operation of a motor vehicle'},
        [6] = {title = 'Involuntary Manslaughter', class = 'Misdemeanor', id = 'P.C.2.6 ', months = 15, fine = 5000, color = 'orange', description = 'The unintentional killing of another person as a result of general recklessness without intent to kill another person.'},
        [7] = {title = 'Unlawful Imprisonment', class = 'Misdemeanor', id = 'P.C.2.7 ', months = 15, fine = 2000, color = 'orange', description = 'Unlawful imprisonment is when a person (who doesnt have legal authority or justification) intentionally restrains another persons ability to move freely.'},
        [8] = {title = 'Kidnapping', class = 'Felony', id = 'P.C.2.8 ', months = 25, fine = 5000, color = 'red', description = 'The unlawful transportation or holding of another person against their will and abducting another person and holding them against their will for an extended period of time.'},
        [9] = {title = 'Hostage Taking', class = 'Felony', id = 'P.C.2.9 ', months = 30, fine = 5000, color = 'red', description = 'Holding a person with a threat against their life or well being with intent or declaration of using them for leverage for escape or personal gain.'},
        [10] = {title = 'Domestic Violence', class = 'Misdemeanor', id = 'P.C.2.10 ', months = 10, fine = 500, color = 'orange', description = 'Violent or aggressive behavior within the home, typically involving the violent abuse of a spouse or partner.'},
        [11] = {title = 'Strongarm Robbery', class = 'Felony', id = 'P.C.2.11 ', months = 20, fine = 4000, color = 'red', description = 'Theft of money or property from an individual or business with force.'},
        [12] = {title = 'Assult', class = 'Misdemeanor', id = 'P.C.2.12 ', months = 5, fine = 500, color = 'orange', description = 'The act of possessing the means by which to injure another person, attempting to willfully injure another, but failing to do so.'},
        [13] = {title = 'Aggravated Assult', class = 'Felony', id = 'P.C.2.13 ', months = 20, fine = 2000, color = 'red', description = 'The act of possessing the means by which to injure another person, attempting to willfully injure another WITH a weapon, but failing to do so.'},
        [14] = {title = 'Simple Battery', class = 'Infraction', id = 'P.C.2.14 ', months = 0, fine = 500, color = 'green', description = 'The act of intentionally touching another person without consent or intentionally causing minor physical injury to another person.'},
        [15] = {title = 'Battery', class = 'Misdemeanor', id = 'P.C.2.15 ', months = 10, fine = 1000, color = 'orange', description = 'The act of intentionally causing real physical injury to another person through physical means (including through the use of bodily fluids).'},
        [16] = {title = 'Aggravated Battery', class = 'Felony', id = 'P.C.2.16 ', months = 20, fine = 3000, color = 'red', description = 'The act of intentionally causing real physical injury to another person through physical means WITH a weapon.'},
        [17] = {title = 'Inciting a Riot', class = 'Felony', id = 'P.C.2.17 ', months = 20, fine = 2000, color = 'red', description = 'The act of a person organizing an event or assembly which results in violent conduct or creates a risk of causing public harm with a group of at least four people.'},
        [18] = {title = 'Killing or Injuring a Police Animal', class = 'Felony', id = 'P.C.2.18 ', months = 30, fine = 5000, color = 'red', description = 'It is illegal for a person to intentionally kill a police work dog or police work horse while such dog or horse is in the performance of its duties and under the care of a police officer / handler.'},
        [19] = {title = 'Abuse of a Corpse', class = 'Misdemeanor', id = 'P.C.2.19.1 ', months = 5, fine = 2200, color = 'orange', description = 'The act of intentionally and unlawfully disinters, digs up, removes, conceals, mutilates or destroys a human or animal corpse, or any part or the ashes thereof. Either or intentionally desecrating a dead body.'},
        [20] = {title = 'Corpse Looting', class = 'Misdemeanor', id = 'P.C.2.19.2 ', months = 2, fine = 1000, color = 'orange', description = 'Any person who pick-pockets a corpse or injured person and takes their possessions.'},
        [21] = {title = 'Armed Robbery', class = 'Felony', id = 'P.C.2.20 ', months = 20, fine = 4000, color = 'red', description = 'The act of an individual/s committing a robbery for goods/services, whilst possessing weapons.'},
        [22] = {title = 'Human Trafficing (Fed)', class = 'Felony', id = 'P.C.2.21 ', months = 30, fine = 20000, color = 'red', description = 'The act of illegally transporting individuals around the state, either from county to county (Los Santos to Blaine County Vice Versa) ,from one state to another (San Andreas to Cayo Parico or vice versa) or around one particular county.'},
        [23] = {title = 'Concealing an Accidental Death', class = 'Misdemeanor', id = 'P.C.2.22 ', months = 5, fine = 1000, color = 'orange', description = 'The deliberate intent, by an individual attempting to conceal an accidental death. Concealment can include any of the following; concealing a corpse of someone who accidentally died, destroying, tampering, planting or hiding evidence in relation to the accidental death or hiding the objects/instruments involved in the death.'},
    },
    [3] = {
        [1] = {title = 'Unlawful Assembly', class = 'Misdemeanor', id = 'P.C.3.1 ', months = 5, fine = 200, color = 'orange', description = 'Participation in an event/assembly which results in violent conduct or creates a risk of causing public harm with a group of at least four people.'},
        [2] = {title = 'Obstruction', class = 'Misdemeanor', id = 'P.C.3.2 ', months = 10, fine = 1000, color = 'orange', description = 'Willfully tampering with the discovery, apprehension, conviction or punishment of a crime or criminal after a crime has been committed or charged.'},
        [3] = {title = 'Failure to Identify', class = 'Misdemeanor', id = 'P.C.3.3 ', months = 15, fine = 1000, color = 'orange', description = 'No person may refuse to disclose their name, or provide their identification, social security number, and date of birth when requested by a law enforcement officer who possesses probable cause to request it.'},
        [4] = {title = 'False Reporting', class = 'Misdemeanor', id = 'P.C.3.4 ', months = 15, fine = 1000, color = 'orange', description = 'Reporting a false crime. Filing a false police report. Reporting a false emergency. Summoning emergency services, including fire and medical services, to a fabricated, made up, emergency.'},
        [5] = {title = 'Violation of Restraining Order', class = 'Misdemeanor', id = 'P.C.3.5 ', months = 15, fine = 2000, color = 'orange', description = 'To violate a restraining order means to go beyond its restrictions. The violation is dependent on the restrictions existent within the order.'},
        [6] = {title = 'Conspiracy', class = 'Misdemeanor', id = 'P.C.3.6 ', months = 10, fine = 1000, color = 'orange', description = 'Planning or attempt to plan the commission of a criminal misdemeanor or felony.'},
        [7] = {title = 'Failure to Appear', class = 'Misdemeanor', id = 'P.C.3.7 ', months = 15, fine = 1000, color = 'orange', description = 'Any instance in which a person is given proper notification that they have been summoned to court and then fail to appear.'},
        [8] = {title = 'Perjury (Fed)', class = 'Felony', id = 'P.C.3.8 ', months = 30, fine = 2000, color = 'red', description = 'Knowingly lying under oath verbally or through writing in judicial proceedings. Perjury is knowingly telling a lie or breaking an oath. An example of perjury is a witness telling a lie while giving testimony in court.'},
        [9] = {title = 'Contempt of Court (Fed)', class = 'Misdemeanor', id = 'P.C.3.9 ', months = 15, fine = 1500, color = 'orange', description = 'The act of being disobedient to or discourteous towards a court of law and its officers in the form of behavior that opposes or defies the authority, justice, and dignity of the court. The time or fine received is at the Judges Discretion depending on how the scenario played out.'},
        [10] = {title = 'Bribery', class = 'Felony', id = 'P.C.3.10 ', months = 20, fine = 2500, color = 'red', description = 'Confers, or agrees to confer, any benefit upon a public servant upon an agreement or understanding that such public servants vote, opinion, judgement, action, decision or exercise of discretion as a public servant will thereby be influenced.'},
        [11] = {title = 'Disturbing the Peace', class = 'Misdemeanor', id = 'P.C.3.11 ', months = 5, fine = 250, color = 'orange', description = 'No person may use offensive language or behavior in a public place with the intention or reasonably concludable result of provoking or inciting a physical/violent reaction from another person (instigation). No person may produce/play noise/music loud enough to reasonably cause hearing damage, at any time of day or night, in any public place'},
        [12] = {title = 'Disorderly Public Intoxication', class = 'Misdemeanor', id = 'P.C.3.12 ', months = 10, fine = 350, color = 'orange', description = 'No person shall, while on public property, or a public road: Exhibit a lack of physical motor control / fine bodily-motor skills as a result of being under the influence of alcohol or illegal drugs/narcotics'},
        [13] = {title = 'Disorderly Conduct', class = 'Misdemeanor', id = 'P.C.3.13 ', months = 5, fine = 750, color = 'orange', description = 'Offensive conduct and/or unreasonable behavior which is likely to cause a serious offence or serious annoyance to other people.'},
    },
    [4] = {
        [1] = {title = 'Petty Theft', class = 'Misdemeanor', id = 'P.C. 4.1', months = 0, fine = 200, color = 'orange', description = 'When someone takes someone elses personal property, worth $999.99 or less, without permission. Someone who fails to pay a contract or invoice within a reasonable amount of time for services totaling less than $999.99 in value is also guilty under this code.'},
        [2] = {title = 'Grand Theft', class = 'Misdemeanor', id = 'P.C. 4.2', months = 0, fine = 400, color = 'orange', description = 'When someone takes someone elses personal property, worth $1,000 or more, without permission. Someone who fails to pay a contract or invoice within a reasonable amount of time for services totaling more than $1,000 in value is also guilty under this code.'},
        [3] = {title = 'Government Grand Larceny', class = 'Felony', id = 'P.C. 4.3', months = 15, fine = 1000, color = 'red', description = 'The unlawful taking of government property worth more than $1,000.'},
        [4] = {title = 'Grand Theft Auto', class = 'Felony', id = 'P.C. 4.4', months = 15, fine = 1000, color = 'red', description = 'A person who commits theft of any motor vehicle, no matter the value is guilty under this code section. This also counts for Emergency Services Vehicles.'},
        [5] = {title = 'Burglary', class = 'Felony', id = 'P.C. 4.5', months = 20, fine = 1000, color = 'red', description = 'Entering any structure, room or locked vehicle with the intent to commit a theft or felony offence once inside.'},
        [6] = {title = 'Trespassing', class = 'Misdemeanor', id = 'P.C. 4.6', months = 10, fine = 2000, color = 'orange', description = 'A person who knowingly enters or remains unlawfully on private or government property.'},
        [7] = {title = 'Bank robbery (Fed)', class = 'Felony', id = 'P.C. 4.7', months = 60, fine = 10000, color = 'red', description = 'Robbing banking institutions insured by the FDIC (Federal Deposit Insurance Corporation), including public banks, federal depositories, and investment banks.'},
        [8] = {title = 'Tampering', class = 'Misdemeanor', id = 'P.C. 4.8', months = 5, fine = 1000, color = 'orange', description = 'Tampering with property of another person or entity with intent to cause substantial inconvenience or gain unlawful access for monetary gain.'},
        [9] = {title = 'Vandalism', class = 'Misdemeanor', id = 'P.C. 4.9', months = 5, fine = 1000, color = 'orange', description = 'Maliciously damaging, destroying or defacing another persons property.'},
        [10] = {title = 'Vandalism of Government Property', class = 'Felony', id = 'P.C. 4.10', months = 10, fine = 200, color = 'red', description = 'Maliciously damaging, destroying or defacing Government property.'},
        [11] = {title = 'Gaining Unauthorized access to a system(Fed)', class = 'Felony', id = 'P.C. 4.11', months = 30, fine = 10000, color = 'red', description = 'Hacking'},
        [12] = {title = 'Arson', class = 'Felony', id = 'P.C. 4.12', months = 20, fine = 1000, color = 'red', description = 'The willful and malicious burning or charring of property or persons. A person is guilty of arson when he or she willfully and maliciously sets fire to or burns or causes to be burned or who aids, counsels, or procures the burning of, any structure, forest land, or property.'},
        [13] = {title = 'Criminal Mischief', class = 'Misdemeanor', id = 'P.C. 4.13', months = 10, fine = 500, color = 'orange', description = 'The willful and malicious damaging or unauthorized use of any property belonging to another person.'},
        [14] = {title = 'Possession of Stolen Property', class = 'Misdemeanor', id = 'P.C. 4.14', months = 10, fine = 250, color = 'orange', description = 'Possession of any type of physical property that is reported stolen.'},
	    [15] = {title = 'Breaking and Entering', class = 'Misdemeanor', id = 'P.C. 4.15', months = 5, fine = 1000, color = 'orange', description = 'Entering any structure, property, room or locked vehicle by using tools or force to defeat, damage, or circumvent locks, doors, windows, etc., in order to gain access with the intention of committing a theft, burglary, or other felony offence once inside.'},
        [16] = {title = 'Attempted Bank Robbery (Fed)', class = 'Felony', id = 'P.C. 4.16', months = 30, fine = 5000, color = 'red', description = 'Any individual/s, who shows clear deliberation and attempt, of willingly trying to steal assets, from any bank within San Andreas, insured by the FDIC. Subject/s may be unsuccessful at stealing goods from the bank, however show their intent to try and steal from the bank.'},
        [17] = {title = 'Home Invasion', class = 'Felony', id = 'P.C. 4.17', months = 10, fine = 2000, color = 'red', description = 'The act of willingly breaking into a residential home - or other place of residence such as an apartment unit, condominium, or hotel room - with the intent to rob, murder, kidnap, assault, batter, or commit other violent crimes against the occupant(s) or resident(s).'},
        [18] = {title = 'Possession of Burglary Tools with the Intent to Use', class = 'Misdemeanor', id = 'P.C. 4.18', months = 5, fine = 1500, color = 'orange', description = 'Any individual found in possession of tools that are commonly used in burglaries, where there is reasonable suspicion that the subject/s have clear intent to use said tools, in an attempt to burglarise a property/vehicle.'},
        [19] = {title = 'Possession of Drug Paraphernalia', class = 'Misdemeanor', id = 'P.C. 4.19', months = 5, fine = 200, color = 'orange', description = 'A person who possesses any drug paraphernalia, expect when the substance has been lawfully prescribed to them by a licensed practitioner of medicine or is legally available without prescription is guilty under this code.'},
        [20] = {title = 'Possession of a Controlled Substance', class = 'Misdemeanor', id = 'P.C. 4.20', months = 10, fine = 400, color = 'orange', description = 'A controlled substance is generally a drug or chemical whose manufacture, possession and use is regulated, such as illicitly used drugs or prescription medications that are designated by law.'},
        [21] = {title = 'Sale of a Controlled Substance', class = 'Felony', id = 'P.C. 4.21', months = 20, fine = 1000, color = 'red', description = 'distribute any type of illicit controlled substances'},
        [22] = {title = 'Possession of a Controlled Substance w/ intent to sell', class = 'Felony', id = 'P.C. 4.22', months = 20, fine = 1000, color = 'red', description = 'Sale of Controlled Substance while crossing the threshold for intent to distribute. More than 15 Ounces'},
        [23] = {title = 'Urination or Defecation in public', class = 'Misdemeanor', id = 'P.C. 4.23', months = 5, fine = 500, color = 'orange', description = 'It is illegal for any person to urinate or defecate on any public property including: streets, highways, sidewalks, parking lots, or other public areas and structures such as fountains, road verges, alleyways,'},
        [24] = {title = 'Trafficking', class = 'Felony', id = 'P.C. 4.24', months = 15, fine = 3000, color = 'red', description = 'Engaging in the intentional concealed transportation of an illegal or unauthorized person who entered or is presently within the sovereign state and nation of San Andreas illegally.'},
        [25] = {title = 'Medical Negligence', class = 'Misdemeanor', id = 'P.C. 4.25', months = 10, fine = 3000, color = 'orange', description = 'Medical negligence is generally a failure to adequately or effectively treat a patient in a manner which is objectively incorrect based on medical care practices, and which results in harm.'},
    },
    [5] = {
        [1] = {title = 'First Degree Speeding', class = 'Misdemeanor', id = 'P.C.5.1 ', months = 5, fine = 1000, color = 'orange', description = '50mph or more over the speed limit.'},
        [2] = {title = 'Second Degree Speeding', class = 'Infraction', id = 'P.C.5.2 ', months = 0, fine = 750, color = 'green', description = '25mph to 49mph over the speed limit.'},
        [3] = {title = 'Third Degree Seeding', class = 'Infraction', id = 'P.C.5.3 ', months = 0, fine = 500, color = 'green', description = '10mph to 24mph over the speed limit.'},
        [4] = {title = 'Failure to Maintain Lane', class = 'Infraction', id = 'P.C.5.4 ', months = 0, fine = 100, color = 'green', description = 'Failing to maintain control of a motor vehicle within an appropriate lane of travel.'},
        [5] = {title = 'Illegal Passing', class = 'Infraction', id = 'P.C.5.5 ', months = 0, fine = 100, color = 'green', description = 'Passing another motor vehicle on/over/through a shoulder, intersection, median, or solid line. Passing must be completed without interfering with the safe operation of any approaching vehicle from the opposite direction.'},
        [6] = {title = 'Driving Under the Influence', class = 'Felony', id = 'P.C.5.6 ', months = 20, fine = 1000, color = 'red', description = 'Driving with a BAC of 0.08+ or under the influence of any drugs '},
        [7] = {title = 'Failure to Obey Traffic Control Devices', class = 'Infraction', id = 'P.C.5.7 ', months = 0, fine = 100, color = 'green', description = 'Drivers must obey posted regulatory signs and traffic signals (e.g. Stop sign, yield sign, red light, no turn sign, etc.).'},
        [8] = {title = 'Driving the Wrong Way', class = 'Infraction', id = 'P.C.5.8 ', months = 0, fine = 400, color = 'green', description = 'Driving the wrong direction or against the flow of traffic. Driving left of the center line. If committed on a highway, this offense is a Misdemeanor; in all other situations, it is an infraction.'},
        [9] = {title = 'Negligent Driving', class = 'Misdemeanor', id = 'P.C.5.9 ', months = 0, fine = 800, color = 'orange', description = 'Driving in a way which is grossly dangerous, shows little to no regard for the safety of others, and causes damage to property not owned by the driver exceeding $20,000'},
        [10] = {title = 'Reckless Driving', class = 'Misdemeanor', id = 'P.C.5.10 ', months = 0, fine = 1500, color = 'orange', description = '3 or more Moving Violations '},
        [11] = {title = 'Stopping on Railroad Tracks', class = 'Infraction', id = 'P.C.5.11 ', months = 0, fine = 100, color = 'green', description = 'It is prohibited to stop, stand, wait, or park vehicles on railroad or tramway/light-rail tracks; including vehicles which are queued in traffic. '},
        [12] = {title = 'Illegal Street Competition, Stunting, or Exhibition', class = 'Misdemeanor', id = 'P.C.5.12 ', months = 2, fine = 5000, color = 'orange', description = 'Any individual who is knowingly present as a participant, either on a public street or highway, or on private property open to the general public without the consent of the owner, operator, or agent thereof, at an illegal motor vehicle speed contest or illegal exhibition of speed. is guilty of a misdemeanor subject of 2 months in jail and a fine of no more than $5,000.'},
        [13] = {title = 'Failure to Yield', class = 'Infraction', id = 'P.C.5.13 ', months = 0, fine = 200, color = 'green', description = 'It is illegal to fail to pull to the right side of the road as soon as safely possible when an emergency vehicle is trying to pass'},
        [14] = {title = 'Slow Down Move Over', class = 'Infraction', id = 'P.C.5.14 ', months = 0, fine = 1000, color = 'green', description = 'It is illegal to not move over to provide a gap of at least one lane-width OR pass in the adjacent lane while travelling at least 20MPH under the speed limit when passing a stationary emergency vehicle with emergency lights activated that is stopped on the side or shoulder of a road. '},
	    [15] = {title = 'Distracted Driving', class = 'Infraction', id = 'P.C.5.15 ', months = 0, fine = 200, color = 'green', description = 'A driver shall not drive a motor vehicle while holding and/or operating a handheld wireless telephone or an electronic communications device unless the device is being used in a hands-free manner.'},
        [16] = {title = 'Tailgating', class = 'Infraction', id = 'P.C.5.16 ', months = 0, fine = 200, color = 'green', description = 'Any individual who operates a motor vehicle, and is persistently too close to the vehicle in front of them.'},
        [17] = {title = 'Unroadworth Vehicle', class = 'Infraction', id = 'P.C.5.17 ', months = 0, fine = 100, color = 'green', description = 'This section applies to all self-propelled vehicles. Example: These laws do apply to golf carts driven on public roads. These laws do not apply to bicycles driven on public road.'},
        [18] = {title = 'Driving W/O Headlights or signals', class = 'Infraction', id = 'P.C.5.18 ', months = 0, fine = 100, color = 'green', description = 'Driving after dusk and before dawn or in other poor visibility conditions without headlights or in a vehicle without brake lights or other signals.'},
        [19] = {title = 'Improper or Missing Plates/Registration', class = 'Infraction', id = 'P.C.5.19 ', months = 0, fine = 300, color = 'green', description = 'All motor vehicles must have a visible and valid (registered) license plate on the rear of a motor vehicle when operating or parked/stopped on a public road.'},
        [20] = {title = 'Improper License Class', class = 'Infraction', id = 'P.C.5.20 ', months = 0, fine = 750, color = 'green', description = 'Driving with the improper vehicle class on you license'},
        [21] = {title = 'Driving while Suspended', class = 'Misdemeanor', id = 'P.C.5.21 ', months = 2, fine = 2500, color = 'orange', description = 'Driving with a suspended or revoked license '},
        [22] = {title = 'Driving w/o a License', class = 'Infraction', id = 'P.C.5.22 ', months = 0, fine = 100, color = 'green', description = 'Driving without a license '},
        [23] = {title = 'Reckless Evading', class = 'Felony', id = 'P.C.5.23 ', months = 20, fine = 5000, color = 'red', description = 'Evading an Officer in a way which clearly displays extremely reckless behavior and/or which endangers the public.'},
        [24] = {title = 'Evading', class = 'Felony', id = 'P.C.5.24 ', months = 15, fine = 500, color = 'red', description = 'Any person who, while operating any vehicle, willfully flees, fails to yield to, or otherwise attempts to evade a peace officer who is attempting to detain them.'},
        [25] = {title = 'Hit and run', class = 'Misdemeanor', id = 'P.C.5.25 ', months = 10, fine = 1000, color = 'orange', description = 'Causing a traffic collision and failing to stop and identify oneself afterwards.'},
        [26] = {title = 'Refusal to take a Sobriety Test', class = 'Misdemeanor', id = 'P.C.5.26 ', months = 10, fine = 200, color = 'orange', description = 'Refusing to take a Field Sobriety Test, Breath Test, or Drug Test when asked to do so by an officer during an investigation of suspected Driving Under the Influence.'},
        [27] = {title = 'Open Container of Alcohol in Vehicle', class = 'Misdemeanor', id = 'P.C.5.27 ', months = 5, fine = 500, color = 'orange', description = 'It is illegal to drive with an open container of alcohol in the vehicle. This includes empty containers and open containers in the possession of passengers.'},
        [28] = {title = 'Non-Motor Vehicle on Highway', class = 'Infraction', id = 'P.C.5.28 ', months = 0, fine = 200, color = 'green', description = 'Any motor vehicle operating on a public roadway between sunset and sunrise must enable their headlights.'},
        [29] = {title = 'Non-Motor Vehicle on Highway', class = 'Infraction', id = 'P.C.5.29 ', months = 0, fine = 100, color = 'green', description = 'Walking, cycling (with any man-powered cycle), skateboarding, scooter-riding, rollerblading/skating, or traversing/travelling on a highway/freeway by any means other than a motorcycle or motor vehicle.'},
    },    
    [6] = {
        [1] = {title = 'Truck/Trailer Size Restriction', class = 'Infraction', id = 'P.C. ', months = 0, fine = 300, color = 'green', description = 'A truck with trailer length from front bumper to rear exceeding 75ft is considered excessively long and requires special escorts, otherwise the driver is subject to citation.'},
        [2] = {title = 'Load Size Restriction', class = 'Infraction', id = 'P.C. ', months = 0, fine = 300, color = 'green', description = 'Transporting an "oversized load" without the proper signs indicating "oversized load" or a follow vehicle with amber lights to signify such'},
        [3] = {title = 'Overweight Limit', class = 'Infraction', id = 'P.C. ', months = 0, fine = 300, color = 'green', description = 'When a Truck/Trailer exceeds a weight limit of 80,000 LBS and is also not considered a legal oversized load'},
        [4] = {title = 'Log Book Violation', class = 'Infraction', id = 'P.C. ', months = 0, fine = 500, color = 'green', description = 'Commercial Vehicle Operators must possess a logbook with the following information: Load origin, Destination, Contents, Location of dropoff, location of sender,'},
        [5] = {title = 'Failure to Stop at Railroad Crossings', class = 'Infraction', id = 'P.C. ', months = 0, fine = 1000, color = 'green', description = 'The driver of a commercial motor vehicle carrying hazardous material or any bus capable of carrying passengers shall not cross a railroad track or tracks at grade unless he/she first: Stops the commercial motor vehicle within 50 feet of, and not closer than 15 feet to, the tracks; thereafter listens and looks in each direction along the tracks for an approaching train; and ascertains that no train is approaching.'},
    },    
    [7] = {
        [1] = {title = 'Fire Lane', class = 'Infraction', id = 'P.C. 10001', months = 0, fine = 1000, color = 'green', description = 'Praking allong a red curb'},
        [2] = {title = 'Parking in a no praking zone', class = 'Infraction', id = 'P.C. 10002', months = 0, fine = 250, color = 'green', description = 'Parking in a zone marked no praking or a yellow curb'},
        [3] = {title = 'Parking in a Handicap without a permit', class = 'Infraction', id = 'P.C. 10003', months = 0, fine = 500, color = 'green', description = 'Parking in place designated for handicap'},
        [4] = {title = 'Blocking an emergency exit', class = 'Infraction', id = 'P.C. 10004', months = 0, fine = 750, color = 'green', description = 'Blocking an emergency exit of any building'},
        [5] = {title = 'Blocking a driveway', class = 'Infraction', id = 'P.C. 10005', months = 0, fine = 250, color = 'green', description = 'Blocking any driveway or allyway'},
        [6] = {title = 'Parking against traffic', class = 'Infraction', id = 'P.C. 10006', months = 0, fine = 500, color = 'green', description = 'Parking facing the wrong way of the road'},
        [7] = {title = 'Parking too far from a curb', class = 'Infraction', id = 'P.C. 10007', months = 0, fine = 250, color = 'green', description = 'Parking too far from the curb blocking traffic'},
        [8] = {title = 'Parking too close to a fire Hydrent', class = 'Infraction', id = 'P.C. 10007', months = 0, fine = 250, color = 'green', description = 'Parking too close to a Fire Hydrent'},
        [9] = {title = 'Parking too close to a crosswalk', class = 'Infraction', id = 'P.C. 10007', months = 0, fine = 250, color = 'green', description = 'Parking too close to a crosswalk'},
        [10] = {title = 'Parking on the sidewalk', class = 'Infraction', id = 'P.C. 10007', months = 0, fine = 250, color = 'green', description = 'Parking on the side walk blocking the walk way'},
    },    
    [8] = {
        [1] = {title = 'Hunting w/o a License', class = 'Infraction', id = 'P.C.8.1 ', months = 0, fine = 2000, color = 'green', description = 'The San Andreas Penal Code defines Hunting without a License as the act of hunting game or fishing without a license.'},
        [2] = {title = 'Hunting or Fishing in a Restricted Area', class = 'Infraction', id = 'P.C.8.2 ', months = 0, fine = 750, color = 'green', description = 'The San Andreas Penal Code defines Hunting in a Restricted Area as the act of hunting game or fishing while outside of a designated hunting area.'},
        [3] = {title = 'Cruel Hunting', class = 'Felony', id = 'P.C.8.3 ', months = 15, fine = 6000, color = 'red', description = 'Cruel hunting is defined as subjecting an animal to an unnecessary amount of pain while attempting to capture or kill them.'},
        [4] = {title = 'Poaching', class = 'Infraction', id = 'P.C.8.4 ', months = 0, fine = 1000, color = 'green', description = 'poaching is defined as either illegally killing a protected species or overhunting and exceeding a hunting limit.'},
        [5] = {title = 'Animal Cruelty', class = 'Misdemeanor', id = 'P.C.8.5 ', months = 0, fine = 2000, color = 'green', description = 'subjecting an animal to an unnecessary amount of pain'},
    }
}

Config.AllowedJobs = {}
for index, value in pairs(Config.PoliceJobs) do
    Config.AllowedJobs[index] = value
end
for index, value in pairs(Config.AmbulanceJobs) do
    Config.AllowedJobs[index] = value
end
for index, value in pairs(Config.DojJobs) do
    Config.AllowedJobs[index] = value
end

Config.ColorNames = {
    [0] = "Metallic Black",
    [1] = "Metallic Graphite Black",
    [2] = "Metallic Black Steel",
    [3] = "Metallic Dark Silver",
    [4] = "Metallic Silver",
    [5] = "Metallic Blue Silver",
    [6] = "Metallic Steel Gray",
    [7] = "Metallic Shadow Silver",
    [8] = "Metallic Stone Silver",
    [9] = "Metallic Midnight Silver",
    [10] = "Metallic Gun Metal",
    [11] = "Metallic Anthracite Grey",
    [12] = "Matte Black",
    [13] = "Matte Gray",
    [14] = "Matte Light Grey",
    [15] = "Util Black",
    [16] = "Util Black Poly",
    [17] = "Util Dark silver",
    [18] = "Util Silver",
    [19] = "Util Gun Metal",
    [20] = "Util Shadow Silver",
    [21] = "Worn Black",
    [22] = "Worn Graphite",
    [23] = "Worn Silver Grey",
    [24] = "Worn Silver",
    [25] = "Worn Blue Silver",
    [26] = "Worn Shadow Silver",
    [27] = "Metallic Red",
    [28] = "Metallic Torino Red",
    [29] = "Metallic Formula Red",
    [30] = "Metallic Blaze Red",
    [31] = "Metallic Graceful Red",
    [32] = "Metallic Garnet Red",
    [33] = "Metallic Desert Red",
    [34] = "Metallic Cabernet Red",
    [35] = "Metallic Candy Red",
    [36] = "Metallic Sunrise Orange",
    [37] = "Metallic Classic Gold",
    [38] = "Metallic Orange",
    [39] = "Matte Red",
    [40] = "Matte Dark Red",
    [41] = "Matte Orange",
    [42] = "Matte Yellow",
    [43] = "Util Red",
    [44] = "Util Bright Red",
    [45] = "Util Garnet Red",
    [46] = "Worn Red",
    [47] = "Worn Golden Red",
    [48] = "Worn Dark Red",
    [49] = "Metallic Dark Green",
    [50] = "Metallic Racing Green",
    [51] = "Metallic Sea Green",
    [52] = "Metallic Olive Green",
    [53] = "Metallic Green",
    [54] = "Metallic Gasoline Blue Green",
    [55] = "Matte Lime Green",
    [56] = "Util Dark Green",
    [57] = "Util Green",
    [58] = "Worn Dark Green",
    [59] = "Worn Green",
    [60] = "Worn Sea Wash",
    [61] = "Metallic Midnight Blue",
    [62] = "Metallic Dark Blue",
    [63] = "Metallic Saxony Blue",
    [64] = "Metallic Blue",
    [65] = "Metallic Mariner Blue",
    [66] = "Metallic Harbor Blue",
    [67] = "Metallic Diamond Blue",
    [68] = "Metallic Surf Blue",
    [69] = "Metallic Nautical Blue",
    [70] = "Metallic Bright Blue",
    [71] = "Metallic Purple Blue",
    [72] = "Metallic Spinnaker Blue",
    [73] = "Metallic Ultra Blue",
    [74] = "Metallic Bright Blue",
    [75] = "Util Dark Blue",
    [76] = "Util Midnight Blue",
    [77] = "Util Blue",
    [78] = "Util Sea Foam Blue",
    [79] = "Uil Lightning blue",
    [80] = "Util Maui Blue Poly",
    [81] = "Util Bright Blue",
    [82] = "Matte Dark Blue",
    [83] = "Matte Blue",
    [84] = "Matte Midnight Blue",
    [85] = "Worn Dark blue",
    [86] = "Worn Blue",
    [87] = "Worn Light blue",
    [88] = "Metallic Taxi Yellow",
    [89] = "Metallic Race Yellow",
    [90] = "Metallic Bronze",
    [91] = "Metallic Yellow Bird",
    [92] = "Metallic Lime",
    [93] = "Metallic Champagne",
    [94] = "Metallic Pueblo Beige",
    [95] = "Metallic Dark Ivory",
    [96] = "Metallic Choco Brown",
    [97] = "Metallic Golden Brown",
    [98] = "Metallic Light Brown",
    [99] = "Metallic Straw Beige",
    [100] = "Metallic Moss Brown",
    [101] = "Metallic Biston Brown",
    [102] = "Metallic Beechwood",
    [103] = "Metallic Dark Beechwood",
    [104] = "Metallic Choco Orange",
    [105] = "Metallic Beach Sand",
    [106] = "Metallic Sun Bleeched Sand",
    [107] = "Metallic Cream",
    [108] = "Util Brown",
    [109] = "Util Medium Brown",
    [110] = "Util Light Brown",
    [111] = "Metallic White",
    [112] = "Metallic Frost White",
    [113] = "Worn Honey Beige",
    [114] = "Worn Brown",
    [115] = "Worn Dark Brown",
    [116] = "Worn straw beige",
    [117] = "Brushed Steel",
    [118] = "Brushed Black steel",
    [119] = "Brushed Aluminium",
    [120] = "Chrome",
    [121] = "Worn Off White",
    [122] = "Util Off White",
    [123] = "Worn Orange",
    [124] = "Worn Light Orange",
    [125] = "Metallic Securicor Green",
    [126] = "Worn Taxi Yellow",
    [127] = "police car blue",
    [128] = "Matte Green",
    [129] = "Matte Brown",
    [130] = "Worn Orange",
    [131] = "Matte White",
    [132] = "Worn White",
    [133] = "Worn Olive Army Green",
    [134] = "Pure White",
    [135] = "Hot Pink",
    [136] = "Salmon pink",
    [137] = "Metallic Vermillion Pink",
    [138] = "Orange",
    [139] = "Green",
    [140] = "Blue",
    [141] = "Mettalic Black Blue",
    [142] = "Metallic Black Purple",
    [143] = "Metallic Black Red",
    [144] = "Hunter Green",
    [145] = "Metallic Purple",
    [146] = "Metaillic V Dark Blue",
    [147] = "MODSHOP BLACK1",
    [148] = "Matte Purple",
    [149] = "Matte Dark Purple",
    [150] = "Metallic Lava Red",
    [151] = "Matte Forest Green",
    [152] = "Matte Olive Drab",
    [153] = "Matte Desert Brown",
    [154] = "Matte Desert Tan",
    [155] = "Matte Foilage Green",
    [156] = "DEFAULT ALLOY COLOR",
    [157] = "Epsilon Blue",
    [158] = "Unknown",
}

Config.ColorInformation = {
    [0] = "black",
    [1] = "black",
    [2] = "black",
    [3] = "darksilver",
    [4] = "silver",
    [5] = "bluesilver",
    [6] = "silver",
    [7] = "darksilver",
    [8] = "silver",
    [9] = "bluesilver",
    [10] = "darksilver",
    [11] = "darksilver",
    [12] = "matteblack",
    [13] = "gray",
    [14] = "lightgray",
    [15] = "black",
    [16] = "black",
    [17] = "darksilver",
    [18] = "silver",
    [19] = "utilgunmetal",
    [20] = "silver",
    [21] = "black",
    [22] = "black",
    [23] = "darksilver",
    [24] = "silver",
    [25] = "bluesilver",
    [26] = "darksilver",
    [27] = "red",
    [28] = "torinored",
    [29] = "formulared",
    [30] = "blazered",
    [31] = "gracefulred",
    [32] = "garnetred",
    [33] = "desertred",
    [34] = "cabernetred",
    [35] = "candyred",
    [36] = "orange",
    [37] = "gold",
    [38] = "orange",
    [39] = "red",
    [40] = "mattedarkred",
    [41] = "orange",
    [42] = "matteyellow",
    [43] = "red",
    [44] = "brightred",
    [45] = "garnetred",
    [46] = "red",
    [47] = "red",
    [48] = "darkred",
    [49] = "darkgreen",
    [50] = "racingreen",
    [51] = "seagreen",
    [52] = "olivegreen",
    [53] = "green",
    [54] = "gasolinebluegreen",
    [55] = "mattelimegreen",
    [56] = "darkgreen",
    [57] = "green",
    [58] = "darkgreen",
    [59] = "green",
    [60] = "seawash",
    [61] = "midnightblue",
    [62] = "darkblue",
    [63] = "saxonyblue",
    [64] = "blue",
    [65] = "blue",
    [66] = "blue",
    [67] = "diamondblue",
    [68] = "blue",
    [69] = "blue",
    [70] = "brightblue",
    [71] = "purpleblue",
    [72] = "blue",
    [73] = "ultrablue",
    [74] = "brightblue",
    [75] = "darkblue",
    [76] = "midnightblue",
    [77] = "blue",
    [78] = "blue",
    [79] = "lightningblue",
    [80] = "blue",
    [81] = "brightblue",
    [82] = "mattedarkblue",
    [83] = "matteblue",
    [84] = "matteblue",
    [85] = "darkblue",
    [86] = "blue",
    [87] = "lightningblue",
    [88] = "yellow",
    [89] = "yellow",
    [90] = "bronze",
    [91] = "yellow",
    [92] = "lime",
    [93] = "champagne",
    [94] = "beige",
    [95] = "darkivory",
    [96] = "brown",
    [97] = "brown",
    [98] = "lightbrown",
    [99] = "beige",
    [100] = "brown",
    [101] = "brown",
    [102] = "beechwood",
    [103] = "beechwood",
    [104] = "chocoorange",
    [105] = "yellow",
    [106] = "yellow",
    [107] = "cream",
    [108] = "brown",
    [109] = "brown",
    [110] = "brown",
    [111] = "white",
    [112] = "white",
    [113] = "beige",
    [114] = "brown",
    [115] = "brown",
    [116] = "beige",
    [117] = "steel",
    [118] = "blacksteel",
    [119] = "aluminium",
    [120] = "chrome",
    [121] = "wornwhite",
    [122] = "offwhite",
    [123] = "orange",
    [124] = "lightorange",
    [125] = "green",
    [126] = "yellow",
    [127] = "blue",
    [128] = "green",
    [129] = "brown",
    [130] = "orange",
    [131] = "white",
    [132] = "white",
    [133] = "darkgreen",
    [134] = "white",
    [135] = "pink",
    [136] = "pink",
    [137] = "pink",
    [138] = "orange",
    [139] = "green",
    [140] = "blue",
    [141] = "blackblue",
    [142] = "blackpurple",
    [143] = "blackred",
    [144] = "darkgreen",
    [145] = "purple",
    [146] = "darkblue",
    [147] = "black",
    [148] = "purple",
    [149] = "darkpurple",
    [150] = "red",
    [151] = "darkgreen",
    [152] = "olivedrab",
    [153] = "brown",
    [154] = "tan",
    [155] = "green",
    [156] = "silver",
    [157] = "blue",
    [158] = "black",
}

Config.ClassList = {
    [0] = "Compact",
    [1] = "Sedan",
    [2] = "SUV",
    [3] = "Coupe",
    [4] = "Muscle",
    [5] = "Sport Classic",
    [6] = "Sport",
    [7] = "Super",
    [8] = "Motorbike",
    [9] = "Off-Road",
    [10] = "Industrial",
    [11] = "Utility",
    [12] = "Van",
    [13] = "Bike",
    [14] = "Boat",
    [15] = "Helicopter",
    [16] = "Plane",
    [17] = "Service",
    [18] = "Emergency",
    [19] = "Military",
    [20] = "Commercial",
    [21] = "Train"
}

function GetJobType(job)
	if Config.PoliceJobs[job] then
		return 'police'
	elseif Config.AmbulanceJobs[job] then
		return 'ambulance'
	elseif Config.DojJobs[job] then
		return 'doj'
	else
		return nil
	end
end
