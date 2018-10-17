# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'rules/new', type: :view do
  before(:each) do
    assign(:rule, FactoryBot.create(:rule))
  end

  it 'renders new rule form' do
    skip 'TODO: Test cannot detect element'
    render

    assert_select 'form[action=?][method=?]', rules_path, 'post' do
      assert_select 'select[name=?]', 'rule[code_id]'

      assert_select 'input[name=?]', 'rule[summary]'

      assert_select 'input[name=?]', 'rule[full]'

      assert_select 'input[name=?]', 'rule[icon]'
    end
  end
end
