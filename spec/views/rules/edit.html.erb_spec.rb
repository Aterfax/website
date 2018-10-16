# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'rules/edit', type: :view do
  before(:each) do
    @rule = assign(:rule, FactoryBot.create(:rule))
  end

  it 'renders the edit rule form' do
    render

    assert_select 'form[action=?][method=?]', rule_path(@rule), 'post' do
      assert_select 'select[name=?]', 'rule[code_id]'

      assert_select 'input[name=?]', 'rule[summary]'

      assert_select 'textarea[name=?]', 'rule[full]'

      assert_select 'input[name=?]', 'rule[icon]'
    end
  end
end
