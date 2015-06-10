class ReplaceGradeWithValue < ActiveRecord::Migration
  def change
    remove_column :grades, :grade
    add_column :grades, :value, :integer
  end
end
