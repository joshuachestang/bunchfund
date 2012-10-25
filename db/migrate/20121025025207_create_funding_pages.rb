class CreateFundingPages < ActiveRecord::Migration
  def change
    create_table :funding_pages do |t|
      t.integer :user_id
      t.string :description
      t.string :title

      t.timestamps
    end
  end
end
