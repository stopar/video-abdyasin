class CreateLectures < ActiveRecord::Migration
  def change
    create_table :lectures do |t|
      t.string :title
      t.text :description
      t.text :note
      t.string :speaker
      t.string :video_name

      t.timestamps
    end
  end
end
