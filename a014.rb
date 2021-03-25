h,w,n = gets.split(" ").map(&:to_i)

card_list = []

h.times do
  card = gets.chomp.split(" ")
  card_list.push(card)
end

n.times do
  judgment = gets.split(" ").map(&:to_i)

  a = card_list[judgment[0]-1][judgment[1]-1]
  b = card_list[judgment[2]-1][judgment[3]-1]

  a_list = card_list[judgment[0]-1]
  a_list_front = card_list[judgment[0]-1][judgment[1]]
  a_list_back = card_list[judgment[0]-1][judgment[1]-2]
  a_list_up = card_list[judgment[0]][judgment[1]-1]
  a_list_down = card_list[judgment[0]-2][judgment[1]-1]

  if a == b
    if a == a_list_front || a == a_list_back || a == a_list_up || a == a_list_down
      puts "Yes"

    # 縦チェック
    elsif (judgment[0] == 1 || card_list.count == judgment[0]) && a_list.include?(b)
      puts "Yes"

    # 横チェック
    elsif (judgment[0] == 1 && judgment[3] == 1) || (judgment[0] == w && judgment[3] == w)
      puts "Yes"
    end
  end
  puts "No"
end
