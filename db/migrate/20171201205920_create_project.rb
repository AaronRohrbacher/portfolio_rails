class CreateProject < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.integer :user_id
      t.integer :project_id
      t.string :name
      t.string :description
      t.attachment :screen_shot
      
    end
  end
end
