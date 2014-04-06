class CreateUsersSkills < ActiveRecord::Migration
  def change
    create_table :users_skills do |t|
      t.integer :user_id #,  # t.references :day
      t.integer :skill_id #,  :null => false# t.references :event
      t.boolean :completed

      # t.integer :energy
      # t.integer :integrity
    end
  end
end
