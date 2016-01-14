require_relative("lib/game.rb")
require_relative("lib/room.rb")

the_game = Game.new

super_small_room = Room.new("The Super Small Room", "S", "This is a really small room with no windows or doors. There is a grate to the south")
small_room = Room.new("The Small Room", "N", "This is a small room with no windows or doors. \nThere is a box to the north")
real_room = Room.new("The Real Room", "E", "This is the real room. ")
where_room = Room.new("Where are you in the Room", "W", "Where are you?")




the_game.add_rooms(super_small_room)
the_game.add_rooms(small_room)
the_game.add_rooms(real_room)
the_game.add_rooms(where_room)

the_game.start

the_game.play
