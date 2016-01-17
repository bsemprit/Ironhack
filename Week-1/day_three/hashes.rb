#Example Exercise: Build the structure

hash = {
	:wat => [
	0,
	1,
	{ :wut => [
		0,
		[
			[
				0,
				1,
				2,
				{
					:bbq => "This is what I was waiting for!"
					}
				]
			]
		]

		}
	]
}



puts hash[:wat][2][:wut][1][0][3][:bbq]





arr = [
		[
			0,
			1,
			2,
			3,
			4,
			{
				:secret => {
					:unlock => [
						0,
						"Yes! You've unlocked all secrets!"
						]
					}
				}
			]
		]

puts arr[0][5][:secret][:unlock][1]