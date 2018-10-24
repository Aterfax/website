# frozen_string_literal: true

FactoryBot.define do
  factory :event do
    datetime { '2018-10-08 14:23:50' }
    end_datetime { '2018-10-08 14:24:50' }
    location { 'Location' }
    lan_number { 1 }
    facebook_event_id { 'Facebook Event ID' }
    ticket_link { 'Ticket Link' }
    name { 'Name' }
    description { 'Description' }
    image_link { '' }
  end
end
