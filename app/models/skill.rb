class Skill < ActiveRecord::Base
  belongs_to :user, through: :user_skill
  validates :name, uniqueness: true
  validates :context, length: { maximum: 140 }
end
