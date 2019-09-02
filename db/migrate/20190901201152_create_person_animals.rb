class CreatePersonAnimals < ActiveRecord::Migration[5.0]
  def change
    create_table :person_animals do |t|
      t.references :person, foreign_key: true
      t.references :animal, foreign_key: true

      t.timestamps
    end
  end
end
