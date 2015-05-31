module ChiefComplaint
  def display_cheif_complaint()
    puts "主訴を入力してください:"
    puts "1. 腹痛, 2. 頭痛, 3. 胸痛"
    cc = gets.chomp.to_i
    case cc
    when 1
      display_disease()
    when 2
      puts "脳外科へGo!!"
    when 3
      puts "循環器内科へGo!!!"
    else
      puts "ちゃんと入力してね！"
      display_cheif_complaint()
    end
  end
end
