class AddAttachmentPictureToContacts < ActiveRecord::Migration
  def self.up
    change_table :contacts do |t|
      t.attachment :picture
      t.attachment :picture_two
      t.attachment :picture_three
    end
  end

  def self.down
    remove_attachment :contacts, :picture
    remove_attachment :contacts, :picture_two
    remove_attachment :contacts, :picture_three
  end
end
