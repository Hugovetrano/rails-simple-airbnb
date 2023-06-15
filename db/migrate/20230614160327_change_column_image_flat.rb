class ChangeColumnImageFlat < ActiveRecord::Migration[7.0]
  def change
    change_column :flats, :image, :string, default: "https://loremflickr.com/320/240/house"

  end
end
