$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'

def directors_totals(nds)
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!

  #pp directors_database

  i = 0

  number_of_directors = nds.length

  result = {}
  gross_movie_income = 0


  until i == number_of_directors do

    j = 0
    number_of_movies = nds[i][:movies].length

    until j == number_of_movies do

      gross_movie_income += nds[i][:movies][j][:worldwide_gross]
      j += 1

    end

    result[(nds[i][:name])] = gross_movie_income
    gross_movie_income = 0
    i += 1
  end

  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  # ...
  # ...
  #
  #
  # Be sure to return the result at the end!

  p result

end
