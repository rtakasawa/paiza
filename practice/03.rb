b = gets.to_i
n = gets.to_i
nums = []
n.times do |i|
    num = gets.to_i
    nums.push(num)
end

nums.each do |num|
  if b == num
    puts "first"
  elsif b + 1 == num || b - 1 == num
    puts "adjacent"
  elsif b % 10000 == num % 10000
    puts "second"
  elsif b % 1000 == num % 1000
    puts "third"
  else
    puts "blank"
  end
end