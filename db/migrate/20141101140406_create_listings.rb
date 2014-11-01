class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :title
      t.text :description
      t.string :feature_image
      t.string :state
			t.integer :user_id
      t.timestamps
    end

		add_index :listings, :user_id
  end
end
