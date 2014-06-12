require 'rails_helper'

describe User do
  let(:user) { create :user }
  context 'associations' do
    it 'returns meetings' do
      expect(user).to respond_to :meetings
    end
  end
end
