# frozen_string_literal: true

require 'steam-condenser'

# Represents one of our game servers. Right now, only those hosted on sleipnir
# are represented.
class SocietyServer < ApplicationRecord
  belongs_to :game
  validates :game, presence: true
  validates :port, presence: true,
                   numericality: { greater_than_or_equal_to: 0,
                                   less_than_or_equal_to: 65_535,
                                   only_integer: true }

  def details
    SourceServer.new('sleipnir.slugsoc.co.uk', port).server_info
  rescue SteamCondenser::TimeoutError
    nil
  end
end
