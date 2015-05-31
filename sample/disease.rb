module Disease
  def display_disease()
    puts "調べたい疾患を選択してください"
    puts "1. 虫垂炎, 2. 胆嚢炎, 3.腸閉塞, 4.尿路結石"
    d = gets.chomp.to_i
    case d
    when 1
      @pre_odds = 0.17 / (1 - 0.17)
      medical_history()
    when 2
      puts "本で調べてね!"
    when 3
      puts "本で調べてね!"
    when 4
      puts "痛いよね。。。"
    else
      display_disease()
    end
  end
end
