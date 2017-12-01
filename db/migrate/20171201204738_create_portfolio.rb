class CreatePortfolio < ActiveRecord::Migration[5.1]
  def change
    create_table :portfolios do |t|
      t.integer :user_id
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
