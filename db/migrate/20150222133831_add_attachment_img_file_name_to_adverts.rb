class AddAttachmentImgFileNameToAdverts < ActiveRecord::Migration
  def self.up
    change_table :adverts do |t|
      t.attachment :img_file_name
    end
  end

  def self.down
    remove_attachment :adverts, :img_file_name
  end
end
