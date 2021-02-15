class RemovingAverageprice < ActiveRecord::Migration[5.2]
  def change
    remove_column :restaurants, :average_rating
  end
end
