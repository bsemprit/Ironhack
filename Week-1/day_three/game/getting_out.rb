require_relative("lib/game.rb")
require_relative("lib/room.rb")

the_game = Game.new
the_game.how_many_rooms(super_small_room)

super_small_room = Room.new ("The Super Small Room", "N", "This is a really small room with no windows or doors. There is a grate to the south")