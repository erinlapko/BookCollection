# location: spec/unit/unit_spec.rb
require 'rails_helper'

RSpec.describe Book, type: :model do
  subject do
    described_class.new(title: 'harry potter',author: 'JK Rowling',price: 19.99,publisheddate: '2013-02-02' )
  end

  it 'is valid with valid attributes ' do
    expect(subject).to be_valid
  end

  it 'is not valid without a name ' do
    subject.title = nil
    expect(subject).not_to be_valid
  end

  subject do
    described_class.new(title: 'harry potter',author: 'JK Rowling',price: 19.99,publisheddate: '2013-02-02' )
  end

  it 'is valid with valid attributes ' do
    expect(subject).to be_valid
  end

  it 'is not valid without a name ' do
    subject.author = nil
    expect(subject).not_to be_valid
  end

  subject do
    described_class.new(title: 'harry potter',author: 'JK Rowling',price: 19.99,publisheddate: '2013-02-02' )
  end

  it 'is valid with valid attributes ' do
    expect(subject).to be_valid
  end

  it 'is not valid without a name ' do
    subject.price = nil
    expect(subject).not_to be_valid
  end

  subject do
    described_class.new(title: 'harry potter',author: 'JK Rowling',price: 19.99,publisheddate: '2013-02-02' )
  end

  it 'is valid with valid attributes ' do
    expect(subject).to be_valid
  end

  it 'is not valid without a name ' do
    subject.publisheddate = nil
    expect(subject).not_to be_valid
  end
end