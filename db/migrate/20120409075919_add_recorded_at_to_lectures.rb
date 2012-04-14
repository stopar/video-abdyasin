class AddRecordedAtToLectures < ActiveRecord::Migration
  def change
    add_column :lectures, :recorded_at, :date
  end
end
