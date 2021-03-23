words = gets.split(' ')
result = words.group_by(&:itself).transform_values(&:size)
result.each do |key, value|
    puts "#{key} #{value}"
end