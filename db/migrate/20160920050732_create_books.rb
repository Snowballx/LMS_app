class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.string :author
      t.string :title
      t.text :description
      t.string :book_category
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
