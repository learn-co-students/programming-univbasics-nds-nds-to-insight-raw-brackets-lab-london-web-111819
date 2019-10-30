$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  
  
  result = {
    "Stephen Speilberg" => 
  }
  
  counter = 0
  while counter < nds[0][2].length do 
    result[:"Stephen Spielberg"] = nds[0][2][counter][:worldwide_gross]
    counter + 1
  
  
end
