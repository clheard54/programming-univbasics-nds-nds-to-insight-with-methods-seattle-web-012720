$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  total_gross = 0 
  title_index = 0 
  while title_index < director_data[:movies].length do
    total_gross += director_data[:movies][title_index][:worldwide_gross]
      title_index += 1 
  end
  puts total_gross
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  row_index = 0 
  result = {}
  while row_index < nds.length do
    result[:"#{nds[row_index][:name]}"] = "#{gross_for_director(nds[row_index])}"
    row_index +=1 
  end
  result
end
