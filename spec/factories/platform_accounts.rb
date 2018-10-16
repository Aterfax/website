# frozen_string_literal: true

FactoryBot.define do
  factory :platform_account do
    member { FactoryBot.create(:member) }
    platform { FactoryBot.create(:platform) }
    tag { 'Tag' }
    internal_link { 'Internal Link' }
  end
end
