class Diagnosis
  require './chief_complaint'
  require './disease'
  require './history_talking'
  require './test_result'
  include ChiefComplaint
  include Disease
  include HistoryTalking
  include TestResult

  @post_odds = 0
  @pre_odds = 0
 
  def chose_cheif_complaint
    puts "問診をはじめます"
    display_cheif_complaint()
  end

end

puts Diagnosis.new.chose_cheif_complaint
