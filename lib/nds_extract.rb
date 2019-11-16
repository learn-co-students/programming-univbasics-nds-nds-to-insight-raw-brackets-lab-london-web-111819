$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require "pry"
def directors_totals(nds)


  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!

  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"


    # puts directors_database[8]
    # result = {}
    # directors_database.each do |director|
    #   gross = 0
    #   director[:movies].each do |movie|
    #   gross += movie[:worldwide_gross]
    #   end
    #   result[director[:name]] = gross
    # end
    #   result


    directorCount = 0
    grossCount = 0
    result = {}
    while directorCount < directors_database.count
      if result[directors_database[directorCount][:name]]
        result[directors_database[directorCount][:name]] += (directors_database[directorCount][:movies][grossCount][:worldwide_gross])
       grossCount += 1
       puts result
     else
      result[directors_database[directorCount][:name]] = (directors_database[directorCount][:movies][grossCount][:worldwide_gross])
      grossCount += 1
    end
         while grossCount == directors_database[directorCount][:movies].count
           grossCount = 0
           directorCount += 1
          #  if directorCount == directors_database.count
          #    break
        #  end
       end
     end
     result


  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  # ...
  # ...
  # ...
  #
  #
  # Be sure to return the result at the end!
end
