# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'servers/show', type: :view do
  before(:each) do
    @server = assign(:server, FactoryBot.create(:server))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/1/)
  end
end
