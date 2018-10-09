# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Server, type: :model do
  it { should validate_presence_of(:game) }
  it { should validate_presence_of(:port) }
  it { should validate_numericality_of(:port).only_integer }
  it { should validate_numericality_of(:port).is_less_than_or_equal_to(65_535) }
  it { should validate_numericality_of(:port).is_greater_than_or_equal_to(0) }
end
