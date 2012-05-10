class AddDurationToLectures < ActiveRecord::Migration
  def change
    add_column :lectures, :minutes, :integer, :default => 0
  end
end
