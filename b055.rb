input_line = gets.split(" ").map(&:to_i)

price_list = []
taxi_info = []

input_line[0].times do
  taxi = gets.chomp.split(" ").map(&:to_i)
  taxi_info.push(taxi)
end

taxi_info.map do |a,b,c,d|
  if input_line[1] < a
    price_list.push(b)
  elsif input_line[1] == a
    taxi_price = d + b
    price_list.push(taxi_price)
  else
    cal = (input_line[1] - a) / c.to_f
    cal += 1 if /[0]$/ =~ cal.to_s
    taxi_price = cal.ceil * d + b
    price_list.push(taxi_price)
  end
end

puts "#{price_list.min} #{price_list.max}"
