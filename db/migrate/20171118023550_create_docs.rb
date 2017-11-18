class CreateDocs < ActiveRecord::Migration[5.1]
  def change
    create_table :docs do |t|
      t.string :title
      t.string :content

      t.timestamps null: false
    end
  end
end
