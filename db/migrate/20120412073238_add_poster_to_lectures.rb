class AddPosterToLectures < ActiveRecord::Migration
  def change
    add_column :lectures, :poster, :string
  end
end
