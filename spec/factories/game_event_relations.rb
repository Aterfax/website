FactoryBot.define do
  factory :game_event_relation do
    game { FactoryBot.create(:game) }
    event { FactoryBot.create(:event) }
  end
end
