class SwallowBuyerValidator < ActiveModel::Validator
  def validate(record)
    minimum_age = 18 
    if record.age < minimum_age && record.animals.present?
      record.animals.each do |animal|
        if animal.swallow? 
          record.errors[:animals] << 'Pessoas devem ter mais de 18 anos para ter andorinhas'
        end   
      end   
    end
  end
end