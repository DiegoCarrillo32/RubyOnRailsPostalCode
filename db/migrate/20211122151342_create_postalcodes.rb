class CreatePostalcodes < ActiveRecord::Migration[6.1]
  def change
    create_table :postalcodes do |t|
      t.string :department
      t.string :municipality
      t.integer :postalcode
      t.string :neighbourhood
      t.timestamps
    end
  end
end
