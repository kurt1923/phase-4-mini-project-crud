class ChangeRating < ActiveRecord::Migration[6.1]
  def change
    rename_column(:spices, :raiting, :rating)
  end
end
