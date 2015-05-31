class Disease < ActiveRecord::Base
  validates :name, presence: true
  validates :cheif_complaint, presence: true
  validates :pretest_probability, presence: true
end
