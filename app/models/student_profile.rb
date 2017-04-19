class StudentProfile < ApplicationRecord
  has_attached_file :image, styles: { medium: "300x400>" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
  validates :name, presence: true,
            uniqueness: { case_sensitive: false },
            length: { minimum: 3, maximum: 25 }

  validates :studentID, presence: true,
            uniqueness: { case_sensitive: false },
            length: { minimum: 3, maximum: 25 }

  validates :phoneNo, presence: true,
            uniqueness: { case_sensitive: false },
            length: { minimum: 3, maximum: 25 }


  validates :fos, presence: true,
            uniqueness: { case_sensitive: false },
            length: { minimum: 3, maximum: 25 }


end