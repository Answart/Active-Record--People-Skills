class User < ActiveRecord::Base
  has_many :proficiencies
  has_many :skills, through: :proficiencies


  def proficiency_for(skill_name)
    this_skill = Skill.find(skill_name)
    @a_proficiency = Proficiency.where(user_id: self.id, skill_id: this_skill.id).first
    @a_proficiency.proficiency
  end

  def set_proficiency_for(skill_name, level)
    this_level = level.to_i
    proficiency_for(skill_name)
    @a_proficiency.proficiency = this_level
    @a_proficiency.save
  end
end



