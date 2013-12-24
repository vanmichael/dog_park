require 'spec_helper'

describe Pet do
  it { should have_valid(:owner_id).when(1) }
  it { should_not have_valid(:owner_id).when(nil,'') }

  it { should belong_to :owner }
  it { should belong_to :dog }
end
