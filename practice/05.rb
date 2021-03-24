n,k = gets.split(' ').map(&:to_i)
logs = gets.split(' ').map(&:to_i)
roop_count = n - k
results = []
(0..roop_count).each do |i|
  sum_count = i + roop_count
  total = 0
  (i..sum_count).each do |n|
    binding.irb
    total += logs[n]
  end
  result = total / k.to_f
  results.push(result)
end

results_count = results.group_by(&:itself).transform_values(&:size)
max_result_count =results_count[results_count.keys.max]

max_result_count_first_log = logs[results.index(results.max)]

puts "#{max_result_count} #{max_result_count_first_log}"