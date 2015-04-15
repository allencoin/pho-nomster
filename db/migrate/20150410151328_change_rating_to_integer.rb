class ChangeRatingToInteger < ActiveRecord::Migration
  def change
  	change_column :comments, :rating, 'integer USING CAST(rating AS integer)'
  end
end
