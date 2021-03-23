line = gets.split(' ').map(&:to_i)

num_list = []

line[0].times do
  num = gets.chomp.split(" ").map(&:to_i)
  num_list.push(num)
end

