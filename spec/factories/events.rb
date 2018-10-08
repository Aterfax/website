# frozen_string_literal: true

FactoryBot.define do
  factory :event do
    datetime '2018-10-08 14:23:50'
    location 'MyString'
    lan_number 1
    facebook_event_id 'MyString'
    ticket_link 'MyString'
    name 'MyString'
    description 'MyString'
    image_link 'MyString'
  end
end
