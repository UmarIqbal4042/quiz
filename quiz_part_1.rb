require 'csv'

file = CSV.read("problems.csv")

correct = 0
wrong = 0

file.each do |questiom,answer|
  puts questiom
  user_input = gets

  if answer.to_i == user_input.to_i
    puts "Correct Answer"
    correct += 1
  else
    puts "Wrong Answer"
    wrong += 1
  end

end

puts "Total correct answer is #{correct} and Wrong Answer is #{wrong}"
