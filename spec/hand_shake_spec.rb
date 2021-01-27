# frozen_string_literal: true

require 'rspec'
require './app/classes/hand_shake'

describe HandShake do
  before do
    @hand = HandShake.new
  end

  describe '.get_handshake' do
    it 'Return a normal secret handshake array' do
      expected = ['wink', 'double blink']
      expect(@hand.get_handshake(3)).to eq(expected)
    end
    it 'Return a reversed secret handshake array' do
      expected = ['double blink', 'wink']
      expect(@hand.get_handshake(19)).to eq(expected)
    end
    it 'Return a reversed secret handshake array of number 10' do
      expected = ['double blink', 'jump']
      expect(@hand.get_handshake(10)).to eq(expected)
    end
  end
end
