class AddAttachmentImageToStudentProfiles < ActiveRecord::Migration
  def self.up
    change_table :student_profiles do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :student_profiles, :image
  end
end
