# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Klasse.create([
	{name:  "Hunter"}

	])


Character.create([
	{ name: "Cabhan", user: 0, klasse_id: 1, primary_spec: 0, item_level: 905, armory: "test.com", server: "Ghostlands"}
	
	])

Spec.create([
	{name: "Marksmanship", role: "DPS", klasse_id:1},
	{name: "Survival", role: "DPS", klasse_id:1},
	{name: "Beast Mastery", role: "DPS", klasse_id:1},

	])