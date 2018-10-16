# frozen_string_literal: true

FactoryBot.define do
  factory :sponsor do
    name { 'Name' }
    website { 'Website' }
    blurb { Faker::Lorem.paragraph_by_chars(70, false) }
    facebook { 'Facebook' }
    twitter { 'Twitter' }
    image_link { 'Image Link' }
  end
end
