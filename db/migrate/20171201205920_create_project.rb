class CreateProject < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :description
      t.integer :project_association_id
      t.string :project_association_type
    end
  end
end
