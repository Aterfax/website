# frozen_string_literal: true

FactoryBot.define do
  factory :member do
    name { 'Name' }
    self.alias { 'Alias' } # Alias is a reserved word in factory_bot
    role { 'Role' }
    blurb { Faker::Lorem.paragraph_by_chars(140, false) }
    image_link { 'Image Link' }
  end
end
