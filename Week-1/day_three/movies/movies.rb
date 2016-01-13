class Movies
    attr_accessor :name, :rating, :number
    def initialize(rating, name, number)
        @rating = rating
        @name = name
        @number = number
    end
end


class MovieRatings
    def initialize
        @movies = []
        @chart = ""
    end

    def moviecounter(movie)
        @movies.push(movie)
    end    

def display
     10.downto(1).each do | i |

        @movies.each do | movie |
            if movie.rating >= i
                @chart += "|#"
            else
                @chart += "| "
            end
        end
        # @chart[0..15]
        print @chart
        @chart = "|\n"
     end
         print "|"
        puts " "
    end
    def numbersdisplay
        puts "-"*12
        @movies.each do | movie |
            print "|#{movie.number}"
        end
        print "|"
        puts " "
        @movies.each do | movie |
            puts "#{movie.number}. #{movie.name}"
        end
    end
end


titanic = Movies.new(10, "Titanic", 1)
ghostbusters = Movies.new(7, "Ghostbusters", 2)
diehard = Movies.new(8, "Die Hard", 3)
godfather = Movies.new(8, "The Godfather", 4)
homealone = Movies.new(3, "Home Alone", 5)
startrek = Movies.new(2, "Star Trek, The Next Generation", 6)
nightofthelivingdead = Movies.new(6, "The Night of the Living Dead", 7)


moviegraph = MovieRatings.new
moviegraph.moviecounter(titanic)
moviegraph.moviecounter(ghostbusters)
moviegraph.moviecounter(diehard)
moviegraph.moviecounter(homealone)
moviegraph.moviecounter(startrek)
moviegraph.moviecounter(nightofthelivingdead)

moviegraph.display
moviegraph.numbersdisplay