# frozen_string_literal: true

FactoryBot.define do
  factory :release do
    game { FactoryBot.create(:game) }
    platform { FactoryBot.create(:platform) }
  end
end
