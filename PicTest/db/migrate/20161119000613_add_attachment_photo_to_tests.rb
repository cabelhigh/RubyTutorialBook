class AddAttachmentPhotoToTests < ActiveRecord::Migration
  def self.up
    change_table :tests do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :tests, :photo
  end
end
