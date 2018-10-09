# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Event, type: :model do
  context 'when retrieving dates' do
    let!(:future_event) do
      FactoryBot.create(:event, datetime: 2.days.after,
                                end_datetime: 3.days.after)
    end
    let!(:past_event) do
      FactoryBot.create(:event, datetime: 2.days.ago,
                                end_datetime: 1.day.ago)
    end
    let(:all_future) { described_class.all_future }

    it 'retrieves future dates' do
      expect(all_future).to include(future_event)
    end

    it 'does not retrieve past dates' do
      expect(all_future).not_to include(past_event)
    end
  end

  context 'when asserting this event lasts multiple days' do
    context 'when the event has no end date' do
      let!(:event) do
        FactoryBot.build(:event, datetime: DateTime.now, end_datetime: nil)
      end

      it 'should be a single day event' do
        expect(event.multiple_day_event?).to be false
      end

      it 'should only display one date' do
        expect(event.dates).not_to include('-')
      end

      it 'should only display one time' do
        expect(event.times).not_to include('-')
      end

      it 'should only display one datetime' do
        expect(event.times).not_to include('-')
      end
    end

    context 'when the event\'s end date is on the same day' do
      let!(:event) do
        FactoryBot.build(:event,
                         datetime: DateTime.now,
                         end_datetime: 2.minutes.after)
      end
      it 'should be a single day event' do
        expect(event.multiple_day_event?).to be false
      end

      it 'should only display one date' do
        expect(event.dates).not_to include('-')
      end

      it 'should display a range of times' do
        expect(event.times).to include('-')
      end

      it 'should display a range of datetimes' do
        expect(event.datetimes).to include('-')
      end
    end

    context 'when the event\'s end date is on the next day' do
      let!(:event) do
        FactoryBot.build(:event,
                         datetime: DateTime.now,
                         end_datetime: 2.days.after)
      end

      it 'should be a multiple day event if it has a valid end' do
        expect(event.multiple_day_event?).to be true
      end

      it 'should display a range of dates' do
        expect(event.dates).to include('-')
      end

      it 'should display a range of times' do
        expect(event.times).to include('-')
      end

      it 'should display a range of datetimes' do
        expect(event.datetimes).to include('-')
      end
    end
  end

  context 'when searching for the next LAN' do
    let!(:next_lan) do
      FactoryBot.create(:event, name: 'LAN 72',
                                datetime: 1.day.after,
                                end_datetime: 3.days.after)
    end
    let!(:future_lan) do
      FactoryBot.create(:event, name: 'LAN 73',
                                datetime: 2.days.after,
                                end_datetime: 4.days.after)
    end
    let!(:dummy_event) do
      FactoryBot.create(:event, name: 'Not a LAN, honestly',
                                datetime: 2.minutes.after,
                                end_datetime: 4.minutes.after)
    end
    let!(:method_output) { Event.next_lan }

    it 'should find the next LAN' do
      expect(method_output).to eq(next_lan)
    end

    it 'should not find later LANs' do
      expect(method_output).not_to eq(future_lan)
    end

    it 'should not capture events that don\'t match' do
      expect(method_output).not_to eq(dummy_event)
    end
  end

  context 'when validating fields' do
    it { should validate_presence_of(:datetime) }
    it { should validate_presence_of(:location) }
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:description) }
    it { should validate_numericality_of(:lan_number).only_integer }
  end

  context 'relations' do
    it { should have_many(:game_event_relations) }
    it { should have_many(:games) }
  end

  context 'when retrieving the facebok event link' do
    let(:event) { FactoryBot.build(:event, facebook_event_id: '2153678125674') }

    it 'returns the Facebook event link as intended' do
      expect(event.facebook_event_link)
        .to eq('https://facebook.com/events/2153678125674')
    end
  end
end
