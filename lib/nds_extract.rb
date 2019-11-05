  $LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
director_idx = 0 
results = {}
while director_idx < nds.length do
  
  director_name = nds[director_idx][:name]
  results[director_name] = 0 
  movie_idx = 0 
  
  while movie_idx < nds[director_idx][:movies].length do 
    results[director_name] += nds[director_idx][:movies]
    [movie_idx][:worldwide_gross]
    movie_idx +=1 
  end 
  director_idx +=1 
end
results
