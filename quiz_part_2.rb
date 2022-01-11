require 'csv'

puts "If you want to Start quiz please pless Enter :"
quiz_start = gets


if quiz_start == "\n"

  quiz_start_time = Time.now

  file = CSV.read("problems.csv")

  correct = 0
  wrong = 0

  file.each do |questiom,answer|

    puts questiom
    user_input = gets
    input_time = Time.now
    check_time = input_time - quiz_start_time

    if check_time < 30

      if answer.to_i == user_input.to_i
        puts "Correct Answer"
        correct += 1
      else
        puts "Wrong Answer"
        wrong += 1
      end

    else
      puts "Sorry Time End :"

      break

    end

  end

  puts "Total correct answer is #{correct} and Wrong Answer is #{wrong}"

else
  puts "Please only Enter :"

end
