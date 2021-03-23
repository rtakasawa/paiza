n = gets.to_i
results = []
n.times do |i|
    result = gets.chomp
    results.push(result)
end

out = 0
fourball = 0

results.each do |result|
  if result == "strike"
    out += 1
    return puts 'out!' if out == 3
    puts "strike!"
  else
    fourball += 1
    return 'fourball!' if fourball == 4
    puts "ball!"
  end
end