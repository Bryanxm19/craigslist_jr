class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.string :price
      t.string :email, null: false
      t.string :title, null: false, limit: 50
      t.text :description, null: false
      t.references :category, null: false

      t.timestamps
    end
  end
end
