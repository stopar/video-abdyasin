class AddDurationToLectures < ActiveRecord::Migration
  def change
    add_column :lectures, :minutes, :integer
  end
end
