#shows everyone and their current place in line
def line(katz_deli)
  if katz_deli.size == 0
    puts "The line is currently empty."
  else
    string = "The line is currently: "
    line_length = katz_deli.size
    line = (1..line_length).to_a
    index = 0
    katz_deli.each do |person|
      place_in_line = line[index]
      index +=1
      #when index == line_length, don't add a space at the end of the person you add the list
      index >= line_length ? string << "#{place_in_line}. #{person}" : string << "#{place_in_line}. #{person} "
    end
    puts string
  end
end

#Tells person where they are in line
def take_a_number(katz_deli, name)
  num = katz_deli.size + 1
  puts "Welcome, #{name}. You are number #{num} in line."
  katz_deli << name
end

#puts who is being served
def now_serving(katz_deli)
  if katz_deli.size == 0
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{katz_deli[0]}."
    katz_deli.shift
  end
end
