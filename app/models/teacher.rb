class Teacher < ApplicationRecord
    has_many :school_class_teacher
    has_many :school_class, through: :school_class_teacher
    has_many :students

    has_one_attached :profile_image
    has_secure_password
end
