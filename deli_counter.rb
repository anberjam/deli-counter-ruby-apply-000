
def line(katz_deli)
  
  #***tells the user that the line is empty
  
 if katz_deli.size==0
   puts "The line is currently empty."
   
  #***if the line has people on it, it adds all the people on the line with their line number in chronological order to a String
  
 elsif katz_deli.size>0
   i=1
   s=""
   katz_deli.each do |person|
     s = "#{s} #{i}. #{person}"
     i+=1
    end
    
 #***then it tells the user what the line currently is
    
  puts "The line is currently:#{s}"
   end
end

#*** The user enters their name, which gets added to the list of names on line.

# def take_a_number(katz_deli,name)
#   katz_deli.push(name)
  
#   #*** The user is greeted and is informed of their place in line.
  
#   puts "Welcome, #{name}. You are number #{katz_deli.size} in line."
# end

counter=0

def take_a_number(katz_deli)
  counter+=1
  katz_deli.push(counter)
  puts "Welcome! You are number #{counter} in line."
end
  
  

def now_serving(katz_deli)
  
#***If there are no names on line, it tells the user that there's nobody waiting to be served 

  if katz_deli.size==0 
    puts "There is nobody waiting to be served!"
  else
    
    #*** otherwise, it tells the user that Katz Deli is serving the first person on line
    puts "Currently serving #{katz_deli[0]}."
  end
   #*** once the deli is done serving the current person, their name is  taken off the list
   
  katz_deli.shift()
  
end