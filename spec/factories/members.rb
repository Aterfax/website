# frozen_string_literal: true

FactoryBot.define do
  factory :member do
    name 'MyString'
    self.alias 'MyString' # Alias is a reserved word in factory_bot
    role 'MyString'
    blurb 'MyString'
    image_link 'MyString'
  end
end
