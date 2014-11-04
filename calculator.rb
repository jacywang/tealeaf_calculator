def say(msg)
  puts "=> #{msg}"
end

say "Type your first number:"
num1 = gets.chomp
while !(num1 =~ /\A[-+]?\d+\z/)
  say "You need to type a number:"
  num1 = gets.chomp
end

say "Type your second number:"
num2 = gets.chomp
while !(num2 =~ /\A[-+]?\d+\z/)
  say "You need to type a number:"
  num2 = gets.chomp
end

say "Choose your operator: +, -, * or /"
operator = gets.chomp

result =  case operator
          when "+"
            num1.to_i + num2.to_i
          when "-"
            num1.to_i - num2.to_i
          when "*"
            num1.to_i * num2.to_i
          when "/"
            if num2 == '0'
              "Denominator cannot be 0."
            else
              num1.to_f / num2.to_f
            end
          end
say "The result is"
puts result
