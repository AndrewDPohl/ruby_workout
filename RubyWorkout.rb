def tempConverter
  temp = gets.chomp.to_i
  choice = gets.chomp.to_i
  if choice == 1 
    puts (temp * 2) + 30
  elsif choice == 2
    puts (temp/2) - 30
  else
  puts "error"
  end 
end


def coolCalculator
  choice = gets.chomp
  number_1 = gets.chomp.to_i
  number_2 = gets.chomp.to_i
  if choice == "add"
    puts number_1 + number_2
  elsif choice == "sub"
    puts number_1 - number_2
  elsif choice == "mult"
    puts number_1 * number_2
  elsif choice == "div"
    puts number_1 / number_2
  else
    puts "error"
  end
end


def reverseStr
  puts "Enter a world to be revered, por favor"
  word = gets.chomp
  new_word = word.split(",").map(&:to_i)
  puts new_word
end


def bankTransaction
  balance = 4000
  puts "Would you like to display, withdraw, or deposit today?"
  choice = gets.chomp
  if choice == "display"
    puts balance
  elsif choice == "withdraw"
    puts "How much would you like to withdraw?"
    wd_num = gets.chomp.to_i
    puts balance - wd_num
  elsif choice == "deposit"
    puts "How much would you like to deposit?"
    dep_num = gets.chomp.to_i
    puts balance + dep_num
  else
    puts "There was an error, please try again"
  end
end

def guessingGame
  correctNum = 1 + rand(100)
  puts "Please pick a number between 1 and 100"
  choice = gets.chomp.to_i
  counter = 1
  until choice == correctNum 
    if choice < correctNum
      puts "The number is higher than " + choice.to_s + ". Please pick again"
      choice = gets.chomp.to_i
      if choice == correctNum
        puts "Congrats, you got it in " + counter.to_s + "tries!"
        end
      counter += 1
      puts "next guess"
    elsif choice > correctNum
      puts "The number is lower than " + choice.to_s + ". Please pick again"
      choice = gets.chomp.to_i
      if choice == correctNum
        puts "Congrats, you got it in " + counter.to_s + "tries!"
        end
      counter += 1
    else
      puts "Congrats, you got it in " + counter.to_s + "tries!"
    end
  end
end


def silly_sum(arr)
  count = 0
  arr.each_with_index do |item, index|
    count += (item * index)
  end
  count
end


def num_square(max)
  my_array = []
  counter = 0
  until counter > max
    my_array.push(counter*counter)
    counter += 1
  end
  my_array
end


def is_prime(num)
  counter = 2
  while counter <= Math.sqrt(num)
    if (num % counter == 0)
      puts "#{num} is not prime"
      break
    else
      puts "#{num} is prime"
      break
    end
  end
end


def primeS(max)
  primes_array = []
  counter = 0
  while counter < max
    if is_prime(counter) == true
      primes_array.push(counter)
    else
      counter += 1
    end
  end
  primes_array
end


def letterCount(str)
  ans = {}
  i = 0
  while i < str.length do
    if ans[str[i]] == nil
      ans[str[i]] = 1
    else
      ans[str[i]] += 1
    end
    i += 1
  end
  ans
end