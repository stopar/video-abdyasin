class AddBooleanFreeToLectures < ActiveRecord::Migration
  def change
    add_column :lectures, :free, :boolean, :default => true
  end
end
