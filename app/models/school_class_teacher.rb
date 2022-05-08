class SchoolClassTeacher < ApplicationRecord
    belongs_to :school_class
    belongs_to :teacher
end
