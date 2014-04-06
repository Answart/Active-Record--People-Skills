class Skill < ActiveRecord::Base
  has_many :proficiencies
  has_many :users, through: :proficiencies
  validates :name, uniqueness: true

  def user_with_proficiency(level)
    a_proficiency = Proficiency.find_by_proficiency(level)
    User.find(a_proficiency.user_id)
  end
end
