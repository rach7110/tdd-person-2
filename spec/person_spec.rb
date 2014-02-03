require 'rubygems'
require'bundler/setup'
require 'rspec'
require_relative '../person.rb'

describe Person do
  describe '.initialize' do

    context 'If a first and last name are provided' do
      it 'create a new person with a first and last name' do
        person = Person.new 'Matt', 'Buck'

        expect(person.first_name).to eq('Matt')
        expect(person.last_name).to eq('Buck')
      end
    end

    context 'If no first or last name are provided' do
      it 'create a person with no first or last name' do
        person = Person.new

        expect(person.first_name).to be_nil
        expect(person.last_name).to be_nil
      end
    end
  end

  describe '#full_name' do

    context 'If a first and last name are provided' do
      it 'return the full name of the person' do
        person = Person.new 'Matt', 'Buck'

        expect(person.full_name).to eq('Matt Buck')
      end
    end

    context 'when first or last name are nil' do
      it 'returns the first or last name' do
        person = Person.new 'Matt'
        
        expect(person.full_name).to eq('Matt')
      end
    end
    
  end

end