class Diagnosis
  require './chief_complaint'
  require './disease'
  include ChiefComplaint
  include Disease

  def chose_cheif_complaint
    puts "問診をはじめます"
    display_cheif_complaint()
  end

end

puts Diagnosis.new.chose_cheif_complaint
