# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'members/show', type: :view do
  before(:each) do
    @member = assign(:member, FactoryBot.create(:member))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Alias/)
    expect(rendered).to match(/Role/)
    # expect(rendered).to match(/Blurb/)
    expect(rendered).to match(/Image Link/)
  end
end
