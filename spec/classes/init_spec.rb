require 'spec_helper'
describe 'p4ruby' do

  context 'with defaults for all parameters' do
    it { should contain_class('p4ruby') }
  end
end
