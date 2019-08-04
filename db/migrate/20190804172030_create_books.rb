class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.string :pub_year
      t.float :average_rating
      t.string :image_url

      t.timestamps
    end
  end
end
