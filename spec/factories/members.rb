# frozen_string_literal: true

FactoryBot.define do
  factory :member do
    name { 'MyString' }
    self.alias { 'MyString' } # Alias is a reserved word in factory_bot
    role { 'MyString' }
    blurb do
      'ipsum suspendisse ultrices gravida dictum fusce ut placerat orci nulla '\
      'pellentesque dignissim enim sit amet venenatis urna cursus eget nunce'
    end
    image_link { 'MyString' }
  end
end
