class Disease < ActiveRecord::Base
  has_many :examinations, dependent: :destroy

  validates :name, presence: true
  validates :cheif_complaint, presence: true
  validates :pretest_probability, presence: true
end
