class Student < ActiveRecord::Base
  belongs_to :course
  belongs_to :school

  has_many :teachers, through: :courses
  has_many :courses, through: :school

  validates :name, presence: true
  validates :age, numericality: {
    only_integer: true,
    greater_than: 16
  }

end
