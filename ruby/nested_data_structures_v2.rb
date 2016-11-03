classic_rock = {

	led_zeppelin: {

		members: {
			"Robert Plant" => "Vocals",
			"Jimmy Page" => "Guitar",
			"John Paul Jones" => "Bass",
			"John Bonham" => "Drums"
		 },

		albums: ["Physical Graffiti", "Houses of the Holy", "Led Zeppelin IV"],

		tour: {
			March_1970: ["Portland", "Denver", "Houston", "Philidelphia"],
			April_1970: [ "Boston", "Miami Beach", "St.Louis", "Montreal"]
		},

	},

	rolling_stones: {

		members: {
			"Kieth Richards" => "Vocals/Piano",
			"Mick Jagger" => "Guitar",
			"Mick Taylor" => "Guitar",
			"Bill Wyman" => "Bass",
			"Charlie Watts" => "Drums"
			},

		albums: ["Sticky Fingers", "Exile on Main St.", "Some Girls"],

		tour: {
			September_1970: ["Stockholm", "Paris", "Berlin", "Rome"],
			October_1970: [ "Milan", "Amsterdam", "Lyon", "Frankfurt"],
		}
	},

	the_doors: {

		members: {
			"Jim Morrison" => "Vocals",
			"Ray Manzarek" => "Keyboard",
			"John Densmore" => "Drums",
			"Robby Krieger" => "Guitar"
		},

		albums: ["Waiting for the Sun", "Strange Days", "Morrison Hotel"],

		tour: {
			February_1970: ["San Francisco", "Long Beach", "Cleveland", "Chicago"],
			March_1970: [ "Chicago", "Phenoix", "Vancouver"],
		}
	}

}

p classic_rock[:the_doors][:albums][2]
p classic_rock[:rolling_stones][:albums].push("Let it Bleed")
p classic_rock[:the_doors][:members].delete("Jim Morrison")
p classic_rock[:led_zeppelin][:tour][:April_1970].delete_at(3)