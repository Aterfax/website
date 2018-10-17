# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'sponsors/show', type: :view do
  before(:each) do
    @sponsor = assign(:sponsor, FactoryBot.create(:sponsor))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Website/)
    # expect(rendered).to match(/Blurb/)
    expect(rendered).to match(/Facebook/)
    expect(rendered).to match(/Twitter/)
    expect(rendered).to match(/Image Link/)
  end
end
