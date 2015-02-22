class AddTypeToAdvert < ActiveRecord::Migration
  def change
  	add_column :adverts, :advert_type, :string
  	add_column :adverts, :price, :string
  end
end
