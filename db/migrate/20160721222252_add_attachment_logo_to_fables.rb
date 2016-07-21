class AddAttachmentLogoToFables < ActiveRecord::Migration
  def self.up
    change_table :fables do |t|
      t.attachment :logo
    end
  end

  def self.down
    remove_attachment :fables, :logo
  end
end
