class CreateLegends < ActiveRecord::Migration[7.2]
  def change
    create_table :legends do |t|
      t.string :name
      t.string :genre
      t.string :era
      t.string :country
      t.text :description
      t.string :link

      t.timestamps
    end
  end
end
