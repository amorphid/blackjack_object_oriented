class Turn
  def initialize(dealer, player)
    @dealer = dealer
    @player = player
    @hand   = @player.hand

    play
  end

  def play
    while @player.may_hit?
      if @player.is_a? Dealer
        @player.hit(@dealer) unless @hand.value > 16
        break if @hand.value > 16
      else
        @player.hand.show
        puts
        "Would you like to 1) Hit or 2) Stand?  "
        choice = gets.chomp

        if choice == "1"
          @player.hit(@dealer)
        else
          break
        end
      end
    end
  end
end
