# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Expansion.create!([
	{name: "Legion", colors: ['#50dc28', '#6a4180'], release_order: 7},
	{name: "Warlords of Draenor", colors: ['#e53101', '#888586'], release_order: 6},
	{name: "Wrath of the Lich King", colors: ['blue', 'black'], release_order: 3}

	])


Raid.create!([
	{name: "Tomb of Sargeras", expansion_id: 1, difficulties: ["Mythic","Heroic","Normal","LFR"], videos: ['ATg67eE7uL0','Td0pUwrBWjc'], info:"Soak mechanics everywhere."},
	{name: "The Nighthold", expansion_id: 1, difficulties: ["Mythic","Heroic","Normal","LFR"], videos: ['I3QJ8Pgjj3c','HF1oQqG2maY'], info:"The final boss is Gul-dan... again."},
	{name: "Helfire Citadel", expansion_id: 2, difficulties: ["Mythic","Heroic","Normal","LFR"], videos: ['Wq4Y7ztznKc','TLzhlsEFcVQ'], info:"Bad expansion, great raid."},
	{name: "Icecrown Citadel", expansion_id: 3, difficulties: ["Heroic 10 Man","Heroic 25 Man","Normal"], videos: ['ZP3IWX-r7ck','aZzzxJXlh-U'], info:"Who the hell doesn't know Arthas?!"}


	])

Klasse.create!([
	{name:  "Hunter", css_style: "hunter"},
	{name:  "Demon Hunter", css_style: "dh"},
	{name:  "Warrior", css_style: "warrior"},
	{name:  "Paladin", css_style: "paladin"},
	{name:  "Rogue", css_style: "rogue"},
	{name:  "Priest", css_style: "priest"},
	{name:  "Shaman", css_style: "shaman"}

	])

Spec.create!([
	{name: "Marksmanship", role: "DPS", klasse_id: 1},
	{name: "Survival", role: "DPS", klasse_id: 1},
	{name: "Beast Mastery", role: "DPS", klasse_id: 1},
	{name: "Havoc", role: "DPS", klasse_id: 2},
	{name: "Vengeance", role: "Tank", klasse_id: 2},
	{name: "Arms", role: "DPS", klasse_id: 3},
	{name: "Fury", role: "DPS", klasse_id: 3},
	{name: "Protection", role: "Tank", klasse_id: 3},
	{name: "Retribution", role: "DPS", klasse_id: 4},
	{name: "Protection", role: "Tank", klasse_id: 4},
	{name: "Holy", role: "Healer", klasse_id: 4},
	{name: "Subtlety", role: "DPS", klasse_id: 5},
	{name: "Assassination", role: "DPS", klasse_id: 5},
	{name: "Outlaw", role: "DPS", klasse_id: 5},
	{name: "Holy", role: "Healer", klasse_id: 6},
	{name: "Discipline", role: "Healer", klasse_id: 6},
	{name: "Shadow", role: "DPS", klasse_id: 6},
	{name: "Elemental", role: "Healer", klasse_id: 7},
	{name: "Enhancement", role: "Healer", klasse_id: 7},
	{name: "Restoration", role: "DPS", klasse_id: 7}


])


User.create!([
	{username: "aaron", password: "password"},
	{username: "charlie", password: "password"}

	])

Character.create!([
	{ name: "Cabhan", user_id: 1, klasse_id: 1, spec_id: 1, item_level: 905, armory: "test.com", server: "Ghostlands", faction: "Horde"},
	{ name: "Padraig", user_id: 1, klasse_id: 2, spec_id: 5, item_level: 915, armory: "test.com", server: "Ghostlands", faction: "Horde"},
	{ name: "Parollin", user_id: 1, klasse_id: 3, spec_id: 6, item_level: 920, armory: "test.com", server: "Doomhammer", faction: "Alliance"},
	{ name: "Perrolin", user_id: 1, klasse_id: 4, spec_id: 10, item_level: 909, armory: "test.com", server: "Doomhammer", faction: "Alliance"},
	{ name: "Rougehype", user_id: 1, klasse_id: 5, spec_id: 12, item_level: 909, armory: "test.com", server: "Doomhammer", faction: "Alliance"},
	{ name: "Priesthype", user_id: 1, klasse_id: 6, spec_id: 16, item_level: 909, armory: "test.com", server: "Ghostlands", faction: "Horde"},
	{ name: "Shammyman", user_id: 2, klasse_id: 7, spec_id: 18, item_level: 909, armory: "test.com", server: "Mal-Ganis", faction: "Horde"}
	
	])

Group.create!([
	{group_name: "Enders game was a good movie", raid_leader_id: 3, raid_id: 1, difficulty: "Mythic", go_time: DateTime.now, faction: "Alliance"},
	{group_name: "WelshLords", raid_leader_id: 7, raid_id: 1, difficulty: "Mythic", go_time: DateTime.now, faction: "Horde"},
	{group_name: "Belf Master Race", raid_leader_id: 3, raid_id: 1, difficulty: "Mythic", go_time: DateTime.now, faction: "Alliance"}

	])

Ledger.create!([
	{group_id:1, character_id:1, spec_id: 1},
	{group_id:1, character_id:2, spec_id: 5},
	{group_id:1, character_id:3, spec_id: 6},
	{group_id:1, character_id:4, spec_id: 10},
	{group_id:1, character_id:5, spec_id: 12},
	{group_id:1, character_id:6, spec_id: 15},

	])