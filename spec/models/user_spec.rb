require 'spec_helper'

describe User do
  context 'associations' do
    it 'returns meetings' do
      expect(user.meetings).to be_an_instance_of Array
    end
  end
end
