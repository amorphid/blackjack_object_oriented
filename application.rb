require "./hand"
require "./card.rb"
require "./deck.rb"
require "./player.rb"
require "./dealer.rb"
require "./turn.rb"

class Application
  def initialize
    @dealer = Dealer.new
    @player = Player.new
    @player.hit(@dealer, 2)
    run
  end

  def cards
    a = []
    b = []
    text = ""

    @dealer.hand.cards.each { |card| a << card.face }
    @player.hand.cards.each { |card| b << card.face }

    limit = [a.count, b.count].max - 1

    0.upto(limit).each do |i|
      text << "|  "

      text << case
              when a[i].nil? then " " * 6
              else                a[i]
              end

      text << "  |  "

      text << case
              when b[i].nil? then " " * 6
              else                b[i]
              end

      text << "  |\n"
    end

    text
  end

  def hand_values
    de_val = @dealer.hand.value.to_s
    pl_val = @player.hand.value.to_s

    text  = "|  "

    text << de_val
    text << case de_val.length
            when 1 then " "
            else        ""
            end

    text << "      |  "

    text << pl_val
    text << case pl_val.length
            when 1 then " "
            else        ""
            end

    text << "      |\n"
  end

  def run
    puts
    puts header
    puts
    puts intro



    # Turn.new(@dealer, @player)
    # Turn.new(@dealer, @dealer) unless @player.bust?

    # puts "Player:  #{@player.hand.value}"
    # puts "Dealer:  #{@dealer.hand.value}"
  end

  def header
    text = "-----BLACKJACK-----\n"
    text << "\u00a92013 Captain Coder\n"
  end

  def intro
    text  = "-----------------------\n"
    text << "|  DEALER  |  PLAYER  |\n"
    text << "|          |          |\n"
    text << "| Cards    | Cards    |\n"

    text << cards

    text << "|          |          |\n"
    text << "| Points   | Points   |\n"

    text << hand_values

    text << "-----------------------\n"
    text << "\n"
    text << "CHOICES\n"
    text << " 1)  Hit\n"
    text << " 2)  Stand\n"
  end
end

Application.new
