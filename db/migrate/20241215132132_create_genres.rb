class CreateGenres < ActiveRecord::Migration[7.2]
  def change
    create_table :genres do |t|
      t.string :name
      t.string :country
      t.text :description
      t.string :link

      t.timestamps
    end

  end
end
