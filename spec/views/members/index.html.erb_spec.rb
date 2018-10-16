# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'members/index', type: :view do
  before(:each) do
    assign(:members, [
             FactoryBot.create(:member),
             FactoryBot.create(:member)
           ])
  end

  it 'renders a list of members' do
    render
    assert_select 'tr>td', text: 'Name'.to_s, count: 2
    assert_select 'tr>td', text: 'Alias'.to_s, count: 2
    assert_select 'tr>td', text: 'Role'.to_s, count: 2
    # assert_select 'tr>td', text: 'Blurb'.to_s, count: 2
    assert_select 'tr>td', text: 'Image Link'.to_s, count: 2
  end
end
