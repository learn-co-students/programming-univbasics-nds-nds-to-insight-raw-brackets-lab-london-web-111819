$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)

  # result = {
  # }
  # countForDirectorsNames = 0
  #    countforfilmgross = 0
     #result[directors_database[countForDirectorsNames][:name]] += directors_database[countForDirectorsNames][:movies][countforfilmgross][:worldwide_gross]
#p  result[directors_database[countForDirectorsNames][:name]] += directors_database[countForDirectorsNames][:movies][countforfilmgross][:worldwide_gross]

  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!

    # puts pp directors_database#[0][:movies][1][:worldwide_gross]

  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
    countForDirectorsNames = 0
    countforfilmgross = 0
  result = {
  }

    while countForDirectorsNames < directors_database.count
      # result = (directors_database[countForDirectorsNames][:movies][countforfilmgross][:worldwide_gross])
      if result[directors_database[countForDirectorsNames][:name]]
         result[directors_database[countForDirectorsNames][:name]] += (directors_database[countForDirectorsNames][:movies][countforfilmgross][:worldwide_gross])
       countforfilmgross += 1
       puts result
    else
      result[directors_database[countForDirectorsNames][:name]] = (directors_database[countForDirectorsNames][:movies][countforfilmgross][:worldwide_gross])
      countforfilmgross += 1
    end
      # if countForDirectorsNames != directors_database[countForDirectorsNames].count
         while countforfilmgross == directors_database[countForDirectorsNames][:movies].count
           countforfilmgross = 0
           countForDirectorsNames += 1
           if countForDirectorsNames == directors_database.count
             break
         end

         end
       end
        result
     # if directors_database[countForDirectorsNames][:movies] = nil
     #   countforfilmgross = 0 countForDirectorsNames += 1
    #  puts result
     #     if directors_database[countForDirectorsNames][:movies][countforfilmgross] > directors_database[countForDirectorsNames][:movies].count
     #   countForDirectorsNames += 1
    #
    # end
# result
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
