class DeleteColumnImageToUsersAndGallery < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :image
    remove_column :galleries, :image
  end
end
