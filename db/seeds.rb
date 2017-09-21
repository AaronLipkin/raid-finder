# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Expansion.create!([
	{name: "Legion", colors: ['#50dc28', '#6a4180', '#333541'], release_order: 7}

	])


Raid.create!([
	{name: "Tomb of Sargeras", expansion_id: 1, difficulties: ["Mythic","Heroic","Normal","LFR"], videos: [], info:""}

	])

Klasse.create!([
	{name:  "Hunter", css_style: "hunter"},
	{name:  "Demon Hunter", css_style: "dh"},
	{name:  "Warrior", css_style: "warrior"},
	{name:  "Paladin", css_style: "paladin"},
	{name:  "Rogue", css_style: "rogue"},
	{name:  "Priest", css_style: "priest"}

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
	{name: "Subtlety", role: "DPS", klasse_id: 5},
	{name: "Assassination", role: "DPS", klasse_id: 5},
	{name: "Outlaw", role: "DPS", klasse_id: 5},
	{name: "Holy", role: "Healer", klasse_id: 6},
	{name: "Discipline", role: "Healer", klasse_id: 6},
	{name: "Shadow", role: "DPS", klasse_id: 6}


])


User.create!([
	{username: "aaron", password: "password"}

	])

Character.create!([
	{ name: "Cabhan", user_id: 1, klasse_id: 1, spec_id: 1, item_level: 905, armory: "test.com", server: "Ghostlands"},
	{ name: "Padraig", user_id: 1, klasse_id: 2, spec_id: 5, item_level: 915, armory: "test.com", server: "Ghostlands"},
	{ name: "Parollin", user_id: 1, klasse_id: 3, spec_id: 6, item_level: 920, armory: "test.com", server: "Ghostlands"},
	{ name: "Perrolin", user_id: 1, klasse_id: 4, spec_id: 10, item_level: 909, armory: "test.com", server: "Ghostlands"},
	{ name: "Rougehype", user_id: 1, klasse_id: 5, spec_id: 11, item_level: 909, armory: "test.com", server: "Ghostlands"},
	{ name: "Priesthype", user_id: 1, klasse_id: 6, spec_id: 15, item_level: 909, armory: "test.com", server: "Ghostlands"},
	
	])

Group.create!([
	{name: "Enders game was a good movie", raid_leader_id: 1, raid_id: 1, difficulty: "Mythic", go_time: DateTime.now}

	])

Ledger.create!([
	{group_id:1, character_id:1, spec_id: 1},
	{group_id:1, character_id:2, spec_id: 5},
	{group_id:1, character_id:3, spec_id: 6},
	{group_id:1, character_id:4, spec_id: 10},
	{group_id:1, character_id:5, spec_id: 11},
	{group_id:1, character_id:6, spec_id: 15},

	])