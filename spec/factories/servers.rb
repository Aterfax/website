# frozen_string_literal: true

FactoryBot.define do
  factory :server do
    game { FactoryBot.create(:game) }
    port { 1 }
  end
end
