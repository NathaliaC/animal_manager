class Person < ActiveRecord::Base
  include ActiveModel::Validations

  has_many :person_animals
  has_many :animals, through: :person_animals
  
  validates_with SwallowBuyerValidator
  validates :name, :document, :birth_date, presence: true

  def age
    Date.today.year - self.birth_date.year 
  end  

  def name_begin_with_a?
    self.name.upcase.scan(/./)[0] == 'A'
  end 
end
