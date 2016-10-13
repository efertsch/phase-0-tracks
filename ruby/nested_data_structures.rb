
barnyard = {

	barn: {
		stalls: {
	 		stall_1: {
	 			animal_type: "Horse", 
	 			animal_name: "Mr.Ed",
	 			favorite_foods: ["sugar cubes", "carrots"]
	 		},
			stall_2: {
				animal_type: "Pig", 
	 			animal_name: "Wilbur",
	 			favorite_foods: ["Literally anything", "Literally everything"]
	 		},
	 		stall_3: {
	 			animal_type: "Cow", 
	 			animal_name: "Clo",
	 			favorite_foods: ["Grass", "Leftover cud"]
	 			},
	 		stall_4: {
	 			animal_type: "Sheep", 
	 			animal_name: "Wooly",
	 			favorite_food: ["Whatever sheep eat"]
	 		}
		},
	
	tack_room: [
		"saddle", 
		"bridle", 
		"grooming_supplies",
		"boots"
		], 
	},
	
	paddock: [
		"trough",
		"grass",
		"riding ring",
		"hay bales",
	],
	
	coop: {
		chickens: {
			betty: "Lays many eggs",
			barbara: "Lays some eggs",
			blaire: "Doesn't lay eggs"
		},

		layboxes: {
			betty_box: "#1", 
			barbara_box: "#2", 
			blaire_box: "#3"
		},

	},
		rooster: {
			big_daddy: "Annoying between the hours of 4-7am"
		},
	
	silo: {
		storage_space: [
			"tractor",
		 	"tools"
		 ], 
		main_space: [
			"feed",
			"grain"
		],
	}

}

# p barnyard 

# p barnyard[:barn][:stalls][:stall_1][:animal_type]

# p barnyard[:barn][:stalls][:stall_2][:favorite_foods][1]

# p barnyard[:paddock]
# p barnyard[:paddock].push("manuer pile")

# p barnyard[:coop][:chickens][:betty]

# p barnyard[:silo]
# p barnyard[:silo][:storage_space][1] = "farming tools"
# p barnyard[:silo]

# p barnyard
p barnyard[:coop][:layboxes]
p barnyard[:coop][:layboxes]
p barnyard[:coop][:layboxes]
