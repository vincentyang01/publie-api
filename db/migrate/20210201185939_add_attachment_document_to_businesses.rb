class AddAttachmentDocumentToBusinesses < ActiveRecord::Migration[6.0]
  def self.up
    change_table :businesses do |t|
      t.attachment :document
    end
  end

  def self.down
    remove_attachment :businesses, :document
  end
end
