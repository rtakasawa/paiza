n,k = gets.split(' ').map(&:to_i)
logs = gets.split(' ').map(&:to_i)
# 繰り返しする回数を取得
roop_count = n - k
results = []

(0..roop_count).each do |i|
  sum_count = i + k - 1
  total = 0
  # 配列のi番目からk番目を加算する
  (i..sum_count).each do |n|
    total += logs[n]
  end
  # 平均値を取得
  result = total / k.to_f
  # resulesに格納
  results.push(result)
end

results_count = results.group_by(&:itself).transform_values(&:size)
max_result_count =results_count[results_count.keys.max]

max_result_count_first_log = results.index(results.max) + 1

puts "#{max_result_count} #{max_result_count_first_log}"