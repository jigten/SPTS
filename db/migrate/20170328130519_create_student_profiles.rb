class CreateStudentProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :student_profiles do |t|
      t.string :name
      t.string :studentID
      t.string :phoneNo
      t.string :fos

      t.timestamps
    end
  end
end
