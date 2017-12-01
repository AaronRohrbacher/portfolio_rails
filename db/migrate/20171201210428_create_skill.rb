class CreateSkill < ActiveRecord::Migration[5.1]
  def change
    create_table :skills do |t|
      t.integer :user_id
      t.integer :portfolio_id
      t.integer :project_id
      t.string :name
      t.string :description
      
    end
  end
end
