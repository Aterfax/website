# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Member, type: :model do
  context 'when filtering for committee only' do
    let!(:committee_member) { FactoryBot.create(:member, role: 'Test Officer') }
    let!(:society_member) { FactoryBot.create(:member, role: nil) }
    let(:committee) { described_class.committee }

    it 'returns only members with roles' do
      expect(committee).to include(committee_member)
    end

    it 'does not return members without roles' do
      expect(committee).not_to include(society_member)
    end
  end

  context 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:blurb) }
    it { should have_many(:platform_accounts) }
  end
end
