class User < ActiveRecord::Base
  has_many :proficiencies
  has_many :skills, through: :proficiencies


  def proficiency_for(skill_name)
    this_skill = Skill.find(name: skill_name)
    this_proficiency = Proficiency.find(skill_id: this_skill.id)
    return this_proficiency.proficiency
  end

  def set_proficiency_for(skill, level)
  end

end
