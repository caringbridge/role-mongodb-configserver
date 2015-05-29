require 'spec_helper'

describe 'spec::default' do

  # Serverspec examples can be found at
  # http://serverspec.org/resource_types.html
  
  it 'does something' do
    skip 'Replace this with meaningful tests'
  end

end

describe file('/var/run/mongodb') do
  it { should be_directory }
  it { should be_owned_by 'mongod' }
end
