class CreateFundingPages < ActiveRecord::Migration
  def change
    create_table :funding_pages do |t|
      t.integer :user_id
      t.string :title
      t.text :description
      

      t.timestamps
    end
  end
end
