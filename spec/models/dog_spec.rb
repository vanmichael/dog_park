require 'spec_helper'

describe Dog do
  it { should have_valid(:name).when('sampson') }
  it { should_not have_valid(:name).when(nil, '') }

  it { should have_many :owners }
end
