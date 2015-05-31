module HistoryTalking
  def medical_history
    puts "病歴"
    puts "移動痛"
    puts "1. あり, 2. なし"
    q = gets.chomp.to_i
    case q
    when 1
      lr = 3.2
      calculate_post_odds(lr)
    when 2
      lr = 0.5
      calculate_post_odds(lr)
    end
    puts "嘔吐に先行する痛み"
    puts "1. あり, 2. なし"
    q = gets.chomp.to_i
    case q
    when 1
      lr = 2.8
      calculate_post_odds(lr)
    when 2
      lr = 0
      calculate_post_odds(lr)
    end
    puts "以前に同様の痛みなし"
    puts "1. あり, 2. なし"
    q = gets.chomp.to_i
    case q
    when 1
      lr = 1.5
      calculate_post_odds(lr)
    when 2
      lr = 0.32
      calculate_post_odds(lr)
    end
    physical_examination()
  end

  def physical_examination
    puts "身体所見"
    puts "1分間触診試験"
    puts "1. 陽性, 2. 陰性"
    q = gets.chomp.to_i
    case q
    when 1
      lr = 8.7
      calculate_post_odds(lr)
    when 2
      lr = 0.1
      calculate_post_odds(lr)
    end
    puts "右下腹部痛"
    puts "1. あり, 2. なし"
    q = gets.chomp.to_i
    case q
    when 1
      lr = 7.9
      calculate_post_odds(lr)
    when 2
      lr = 0.14
      calculate_post_odds(lr)
    end
    puts "反跳痛"
    puts "1. あり, 2. なし"
    q = gets.chomp.to_i
    case q
    when 1
      lr = 3.7
      calculate_post_odds(lr)
    when 2
      lr = 0.43
      calculate_post_odds(lr)
    end
    puts "筋性防御"
    puts "1. あり, 2. なし"
    q = gets.chomp.to_i
    case q
    when 1
      lr = 1.75
      calculate_post_odds(lr)
    when 2
      lr = 0.27
      calculate_post_odds(lr)
    end
    puts "筋硬直"
    puts "1. あり, 2. なし"
    q = gets.chomp.to_i
    case q
    when 1
      lr = 3.8
      calculate_post_odds(lr)
    when 2
      lr = 0.82
      calculate_post_odds(lr)
    end
    puts "psoas徴候"
    puts "1. あり, 2. なし"
    q = gets.chomp.to_i
    case q
    when 1
      lr = 2.4
      calculate_post_odds(lr)
    when 2
      lr = 0.9
      calculate_post_odds(lr)
    end
    puts "直腸診圧痛"
    puts "1. あり, 2. なし"
    q = gets.chomp.to_i
    case q
    when 1
      lr = 3.06
      calculate_post_odds(lr)
    when 2
      lr = 0.73
      calculate_post_odds(lr)
    end

    test()

  end 


  def test
    puts "検査"
    puts "単純X線写真で盲腸に糞便像あり"
    puts "1. あり, 2. なし"
    q = gets.chomp.to_i
    case q
    when 1
      lr = 6.6
      calculate_post_odds(lr)
    when 2
      lr = 0.04
      calculate_post_odds(lr)
    end
    puts "腹部エコー検査"
    puts "1. 陽性, 2. 陰性"
    q = gets.chomp.to_i
    case q
    when 1
      lr = 12
      calculate_post_odds(lr)
    when 2
      lr = 0.18
      calculate_post_odds(lr)
    end
    puts "腹部CT検査"
    puts "1. 陽性, 2. 陰性"
    q = gets.chomp.to_i
    case q
    when 1
      lr = 16
      calculate_post_odds(lr)
    when 2
      lr = 0.06
      calculate_post_odds(lr)
    end
    puts "単純CT 5mmスライス"
    puts "1. 陽性, 2. 陰性"
    q = gets.chomp.to_i
    case q
    when 1
      lr = 50
      calculate_post_odds(lr)
    when 2
      lr = 0.01
      calculate_post_odds(lr)
    end

    puts "単純CT 10mmスライス"
    puts "1. 陽性, 2. 陰性"
    q = gets.chomp.to_i
    case q
    when 1
      lr = 16
      calculate_post_odds(lr)
    when 2
      lr = 0.2
      calculate_post_odds(lr)
    end
  end

  def calculate_post_odds(lr)
    puts "尤度比は#{lr}です"
    @pre_odds *= lr
    to_probability(@pre_odds)
  end
end
