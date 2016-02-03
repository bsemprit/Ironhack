class AddFavoritedToContacts < ActiveRecord::Migration
  def change
    add_column :contacts, :favorited, :boolean
  end
end
