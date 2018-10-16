# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'codes/index', type: :view do
  before(:each) do
    assign(:codes, [
             FactoryBot.create(:code),
             FactoryBot.create(:code)
           ])
  end

  it 'renders a list of codes' do
    skip 'cannot yet target code elements'
    render
    assert_select 'tr>td', text: 'Name'.to_s, count: 2
  end
end
