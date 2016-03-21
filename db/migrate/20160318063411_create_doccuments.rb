class CreateDoccuments < ActiveRecord::Migration
  def change
    create_table :doccuments do |t|
      t.integer :doctor_id 
      t.has_attached_file :avatar
      t.timestamps null: false
    end
  end
end
