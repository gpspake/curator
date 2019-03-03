class CreatePosters < ActiveRecord::Migration[5.2]
  def change
    create_table :posters do |t|
      t.string  :name
      t.text    :description
      t.text    :notes
      t.integer :width
      t.integer :height
      t.string  :artists, array: true
      t.string  :venue
      t.string  :designer
      t.string  :printer
      t.string  :year
      t.string  :series, array: true
      t.string  :signed_by, array: true
      t.string  :picture

      t.timestamps
    end
  end
end
