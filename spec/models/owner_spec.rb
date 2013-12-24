require 'spec_helper'

describe Owner do
  #validations
  	it { should have_valid(:first_name).when('Van') }
  	it { should_not have_valid(:first_name).when(nil,'') }

  	it { should have_valid(:last_name).when('Nguyen') }
  	it { should_not have_valid(:last_name).when(nil,'') }

  	it { should have_valid(:email).when('van@gmail.com') }
  	it { should_not have_valid(:email).when(nil,'') }

    let(:blanks) { [nil, ''] }
    it { should have_valid(:email).when('van@gmail.com') }
    it { should_not have_valid(:email).when(*blanks) }

    let(:invalid_emails) { ['blah.com','@blah.com','@@blah.com','blah','.com'] }
    it { should_not have_valid(:email).when(*invalid_emails) }

    it "should have a unique email" do
    owner_one = FactoryGirl.build(:owner)
    owner_two = FactoryGirl.build(:owner)

    expect(owner_one.save).to eq true
    expect(owner_two.save).to eq false
  end

  #associations

  	it { should have_many :pets }

  #valid attribute
end
