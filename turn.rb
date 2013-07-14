class Turn
  def initialize(dealer, player)
    @dealer = dealer
    @player = player
    @hand   = @player.hand

    play
  end






        @player.hit(@dealer) unless @hand.value > 16
        break if @hand.value > 16
      else
        @player.hand.show
        choice = gets.chomp

        if choice == "1"

        else
          break
        end
      end
    end
  end
end
