# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Event, type: :model do

  context 'when retrieving dates' do
    let!(:future_event) { FactoryBot.create(:event, datetime: 2.days.after, end_datetime: 3.days.after) }
    let!(:past_event) { FactoryBot.create(:event, datetime: 2.days.ago, end_datetime: 1.day.ago) }
    let(:all_future) { described_class.all_future }

    it 'retrieves future dates' do
      expect(all_future).to include(future_event)
    end

    it 'does not retrieve past dates' do
      expect(all_future).not_to include(past_event)
    end
  end

  context 'validations' do
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
end
