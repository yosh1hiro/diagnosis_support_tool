module Disease
  def display_disease()
    puts "調べたい疾患を選択してください"
    puts "1. 虫垂炎, 2. 胆嚢炎, 3.腸閉塞, 4.尿路結石"
    d = gets.chomp.to_i
    puts "okay!"
  end
end
