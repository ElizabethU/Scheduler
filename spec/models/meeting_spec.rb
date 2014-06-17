require 'rails_helper'

describe Meeting do
  let(:meeting){ create :meeting }
  let(:open_slot){ create :meeting, user_id: nil }

  context '#available?' do
    it 'returns false if assigned to a user' do
      expect(meeting.available?).to eq false
    end

     it 'returns true if not assigned to a user' do
      expect(open_slot.available?).to eq true
    end
  end
end
