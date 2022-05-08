class SchoolClass < ApplicationRecord
    has_many :school_class_teacher
    has_many :teachers, through: :school_class_teacher
    has_many :students
end
