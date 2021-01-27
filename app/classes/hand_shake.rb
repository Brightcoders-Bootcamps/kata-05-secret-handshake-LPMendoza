# frozen_string_literal: true

#
#   Class used to create a secret handshake
class HandShake
  def initialize
    @secrets = ['wink', 'double blink', 'close your eyes', 'jump']
  end

  def get_handshake(number)
    @number = number
    create_handshake(number.to_s(2).split('').reverse)
  end

  def create_handshake(number)
    hand_shake = []
    0.upto(end_position(number)) do |index|
      hand_shake << @secrets[index] if number[index] == '1'
    end
    hand_shake.reverse! if number.length >= 5
    return hand_shake
  end

  def end_position(number)
    number.length >= 4 ? 3 : number.length - 1
  end
end
