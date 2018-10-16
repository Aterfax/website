# frozen_string_literal: true

FactoryBot.define do
  factory :rule do
    code { FactoryBot.create(:code) }
    summary { 'MyString' }
    full { 'MyString' }
    icon { 'MyString' }
  end
end
