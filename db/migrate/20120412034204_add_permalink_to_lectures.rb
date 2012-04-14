class AddPermalinkToLectures < ActiveRecord::Migration
  def change
    add_column :lectures, :permalink, :string
  end
end
