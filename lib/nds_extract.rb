$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'




def directors_totals(nds)
  # Remember, it's always OK to pretty print what you get *in* to make sure
  # that you know what you're starting with!
  #
  #
  # The Hash result be full of things like "Jean-Pierre Jeunet" => "222312123123"
  result = {
  }
  #
  # Use loops, variables and the accessing method, [], to loop through the NDS
  # and total up all the
  outer_index = 0 
  directors_total = {}
  while outer_index < nds.length do
    inner_index = 0 
    total = 0
    while inner_index < nds[outer_index][:movies].length do
      money = nds[outer_index][:movies][inner_index][:worldwide_gross]
      total += money
      inner_index += 1 
    end
    directors_total[nds[outer_index][:name]] = total
    outer_index +=1
  end
  # Be sure to return the result at the end!
  directors_total
end
