rpg_party = {
	characterA:{
		char_name: 'Hero',
		char_class: 'Fighter',
		stats:{
			level: 6,
			str: 25,
			int: 8,
			agi: 15
		},
		inventory:{
			equiped:{
				weapon:[sword:{name: "Sword", atk: 5}],
				armor: [leather_armor:{name: "Leather Armor", def: 3, agi: -3}]
			},
			consumable:[
				herb:{name:"Herb", qty:15, effect: {hp: 50}}
			]
		},
		special_moves:[
			crt_atk:{description: "A Critical attack that multiplies damage delt.", dmage_multiplier: 3},
			block:{description: "A defensive move that reduces damage",dmage: -15}
			]
	},
	characterB:{
		char_name: 'Magus',
		char_class: 'Mage',
		stats:{
			level: 4,
			str: 15,
			int: 30,
			agi: 5
		},
		inventory:{
			equiped:{
				weapon:[Staff:{name: "Wooden Staff", atk: 2}],
				armor: [Robe:{name: "Cloth Robe", def: 2, int: 9}]
				},
			consumable:[
				potion:{name:"Magic Potion", qty:2, effect: {mp: 30}},
				crystal:{name:"Crystal", qty:1, effect: {int: 3}}
			]
		},
		special_moves:[
			fire1:{description: "Standard fire spell that targets 1 enemy.", dmage: 30},
			fire2:{description: "Strong fire spell that targets 1 enemy.", dmage: 50},
			fire3:{description: "Strong fire spell that targets all enemies.", dmage: 80}
		]
	},
	characterC:{
		char_name: 'Mary',
		char_class: 'Cleric',
		stats:{
			level: 7,
			str: 20,
			int: 25,
			agi: 8
		},
		inventory:{
			equiped:{
				weapon:[Wand:{name: "Magic Wand", atk: 5, def: 2}],
				armor: [Robe:{name: "Cloth Robe", def: 2, int: 9}]
				},
		consumable:[
			herb:{name:"Herb", qty:15, effect: {hp: 50}},
			potion:{name:"Magic Potion", qty:2, effect: {mp: 30}},
			stone:{name:"Magic Stone", qty:1, effect: {revive: 1}}
			]
		},
		special_moves:[
			heal1:{description: "Heals minor damage from 1 ally.", hp: 50},
			cure1:{description: "Cures 1 ally of poison.", cure: "poison"},
			revive:{description: "Brings one ally back from death.", revive: 1}
		]
	}
}
