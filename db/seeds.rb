#!/bin/env ruby
# encoding: utf-8

types = ['Cavalo', 'Cachorro', 'Papagaio', 'Lhama', 'Iguana', 'Ornitorrinco', 'Andorinha', 'Gato']
types.each do |type|
  AnimalType.create!(name: type)
end 

def date_parse(date)
  Date.strptime("#{date}", '%d-%m-%Y')
end   

document_number = 555555555

persons = [
  { name: 'Johnny Cash', document: document_number, birth_date: date_parse('26-02-1932') },
  { name: 'Sid Vicious', document: document_number, birth_date: date_parse('10-05-1957') },
  { name: 'Axl Rose', document: document_number, birth_date: date_parse('06-02-1962') },
  { name: 'Joey Ramone', document: document_number, birth_date: date_parse('19-05-1951') },
  { name: 'Bruce Dickinson', document: document_number, birth_date: date_parse('07-08-1958') },
  { name: 'Kurt Cobain', document: document_number, birth_date: date_parse('20-02-1967') },
  { name: 'Elvis Presley', document: document_number, birth_date: date_parse('17-08-2008') }
]

persons.each do |person|
  Person.create!(person)
end 

animals = [
  { 
    name: 'Pé de Pano',
    monthly_cost: 199.99,
    animal_type: AnimalType.find_by(name: 'Cavalo'),
    person: Person.find_by(name: 'Johnny Cash')
  },
  { 
    name: 'Rex',
    monthly_cost: 99.99,
    animal_type: AnimalType.find_by(name: 'Cachorro'),
    person: Person.find_by(name: 'Sid Vicious')
  },   
  { 
    name: 'Ajudante do Papai Noel',
    monthly_cost: 99.99,
    animal_type: AnimalType.find_by(name: 'Cachorro'),
    person: Person.find_by(name: 'Axl Rose')
  },  
  { 
    name: 'Rex',
    monthly_cost: 103.99,
    animal_type: AnimalType.find_by(name: 'Papagaio'),
    person: Person.find_by(name: 'Joey Ramone')
  },  
  { 
    name: 'Flora',
    monthly_cost: 103.99,
    animal_type: AnimalType.find_by(name: 'Lhama'),
    person: Person.find_by(name: 'Bruce Dickinson')
  },  
  { 
    name: 'Dino',
    monthly_cost: 177.99,
    animal_type: AnimalType.find_by(name: 'Iguana'),
    person: Person.find_by(name: 'Kurt Cobain')
  },  
  { 
    name: 'Lassie',
    monthly_cost: 407.99,
    animal_type: AnimalType.find_by(name: 'Ornitorrinco'),
    person: Person.find_by(name: 'Elvis Presley')
  }
]
animals.each do |animal|  
  Animal.create!(animal)
end
