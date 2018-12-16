# frozen_string_literal: true

require 'rails_helper'
require 'webmock/rspec'

RSpec.describe SocietyServer, type: :model do
  context 'when the server details are correct' do
    let(:server_response) do
      SocietyServer.new(game: Game.new(name: 'GMod'), port: 27_015).details
    end

    it 'returns a hash of data' do
      expect(server_response).to be_a Hash
    end

    it 'returns a hash of data' do
      expect(server_response.keys).not_to be_empty
    end

    it 'tells how many players are on the server' do
      expect(server_response[:number_of_players]).to be_an Integer
    end

    it 'tells which map is in rotation' do
      expect(server_response[:map_name]).to be_a String
    end
  end

  context 'when the server cannot be reached' do
    let(:bad_response) do
      SocietyServer.new(game: Game.new(name: 'Other Game'), port: 12_345).details
    end

    it 'returns nil' do
      expect(bad_response).to be nil
    end
  end
end
