class AddcolumsToAdvert < ActiveRecord::Migration
  def change
  	add_column :adverts, :title, :string
  	add_column :adverts, :description, :text
  end
end
