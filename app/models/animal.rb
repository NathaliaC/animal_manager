class Animal < ApplicationRecord
  belongs_to :animal_type
  has_one :person_animal
  has_one :person, through: :person_animal

  def 
    self.animal_type.name == Animal.find_by(name: 'Andorinha')
  end   
end
