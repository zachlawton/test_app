# location: spec/unit/unit_spec.rb
require 'rails_helper'

RSpec.describe Book, type: :model do
  subject do
    described_class.new(title: "1984", author: "George Orwell", price: 9.99, date_published: '1949-11-11')
  end

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a name' do
    subject.title = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid without an author' do
    subject.author = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid without a price' do
    subject.price = nil
    expect(subject).not_to be_valid
  end

  it 'is not valid without a date_published' do
    subject.date_published = nil
    expect(subject).not_to be_valid
  end

  it 'has a name' do
    expect(subject.title).to "1984"
  end

  it 'has an author' do
    expect(subject.author).to match "George Orwell"
  end

  it 'has a date' do
    expect(subject.author).to match Date('1949-11-11')
  end

end