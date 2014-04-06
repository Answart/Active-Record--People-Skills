class Skill < ActiveRecord::Base
  has_many :proficiencies
  has_many :users, through: :proficiencies

  validates :name, uniqueness: true
  # validates :context, length: { maximum: 140 }

  # def user_with_proficiency(level)
  #   Proficiecy.find
  #   userobject
  # end
end
