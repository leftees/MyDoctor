class AddAttachmentAvatarToDoctorCategories < ActiveRecord::Migration
  def self.up
    change_table :doctor_categories do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :doctor_categories, :avatar
  end
end
