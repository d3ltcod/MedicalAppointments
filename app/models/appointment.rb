class Appointment < ApplicationRecord
  validates_presence_of :appointment_date

  belongs_to :doctor
  belongs_to :patient
  has_many_attached :images, :dependent => :destroy

  validates :doctor, presence: { strict: true }
  validates :patient, presence: { strict: true }
  validates :images, presence: true, if: :correct_document_mime_type_and_number?

  def correct_document_mime_type_and_number?
    if images.count != 3
      errors.add :images_number, message: "You must be select 3 images."
    end

    images.each do |image|
      if !image.content_type.in?(%w(image/jpg image/png, image/jpeg))
        errors.add(:images_type, "The file type must be JPG, JPEG or PNG an image")
      end
    end    
  end
end
