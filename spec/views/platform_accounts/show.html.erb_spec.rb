# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'platform_accounts/show', type: :view do
  before(:each) do
    @platform_account = assign(:platform_account, FactoryBot.create(:platform_account))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/Tag/)
    expect(rendered).to match(/Internal Link/)
  end
end
