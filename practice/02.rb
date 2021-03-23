n = gets.to_i
words = []
n.times do |i|
    word = gets.chomp
    words.push(word)
end
words.reverse.uniq.each do |word|
    puts word
end