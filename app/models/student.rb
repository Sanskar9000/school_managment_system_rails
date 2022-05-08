class Student < ApplicationRecord
    belongs_to :school_class
    has_many :school_teacher_student
    has_many :teachers, through: :school_teacher_student

    has_one_attached :profile_image
    has_secure_password
end
