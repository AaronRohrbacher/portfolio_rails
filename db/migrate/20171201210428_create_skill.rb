class CreateSkill < ActiveRecord::Migration[5.1]
  def change
    create_table :skills do |t|
      t.string :name
      t.string :description
      t.integer :skill_association_id
      t.string :skill_association_type

    end
  end
end
