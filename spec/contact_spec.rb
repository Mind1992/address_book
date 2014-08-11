require 'rspec'
require 'contact'

describe Contact do
  before do
    Contact.clear
  end

  it 'lets you read name, phone number, email, mailing address' do
    test_contact = Contact.new('Mark')
    expect(test_contact.name).to eq 'Mark'
    expect(test_contact.phones).to eq []
    expect(test_contact.emails).to eq []
    expect(test_contact.addresses).to eq []
  end

describe '.all' do
  it 'the contacts is empty at first' do
    expect(Contact.all).to eq []
  end
end

  it 'gets added to when add is called on an instance' do
    test_contact = Contact.new('Mark')
    test_contact.add
    expect(Contact.all).to eq [test_contact]
  end

  describe '.clear' do
    it 'returns an empty array' do
      Contact.new('Mark').add
      Contact.clear
      expect(Contact.all).to eq []
    end
  end

  it 'lets you delete contact' do 
  	test_contact = Contact.new('Mark')
    test_contact.add
    Contact.delete_contact(test_contact.name)
    expect(Contact.all).to eq []
  end
end