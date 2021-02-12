require_relative "classes/hand_shake"

hand = HandShake.new

loop do
    print "Type a number to get its secret handshake (to finish the program type a letter): "
    number = gets.chomp
    break if number[/[0-9]+/] == nil
    puts "Your secret hand shake is: #{hand.get_handshake(number.to_i).to_s}" 
end