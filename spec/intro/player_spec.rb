# frozen_string_literal: true

require './intro/player'

describe Player do
  it 'returns the correct value for the players active status' do
    player = Player.new
    player.active = 'eheheheh'
    expect(player.active).to be_truthy
  end

  it 'returns an error when sub_credits is passed a zero credit value' do
    player = Player.new
    player.credits = 2
    expect {player.sub_credits(0).to raise_exception(StandardError)}
  end
end