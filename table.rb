class Table
  def initialize(dealer, player)
    @dealer = dealer
    @player = player
  end

  def borders
    "|          |          |\n"
  end

  def body
    puts
    puts header
    puts borders
    puts one_card_each_per_line
    puts borders
    puts hand_values
    puts line
    puts
    puts yield
  end

  # def determine_winner

  #   case
  # end

  def one_card_each_per_line
    de_car = []
    pl_car = []

    @dealer.hand.cards.each { |card| de_car << card.face }
    @player.hand.cards.each { |card| pl_car << card.face }

    text = "| Cards    | Cards    |\n"


    limit = [de_car.count, pl_car.count].max - 1

    0.upto(limit).each do |i|
      text << "|  "

      text << case
              when de_car[i].nil? then " " * 6
              else                     de_car[i]
              end

      text << "  |  "

      text << case
              when pl_car.nil? then " " * 6
              else                  pl_car[i]
              end

      text << "  |\n"
    end

    text
  end

  def line
    text  = "-----------------------\n"
  end

  def header
    text = "-----BLACKJACK-----\n"
    text << "\u00a92013 Captain Coder\n"
    text << "\n"
    text << line
    text << "|  DEALER  |  PLAYER  |\n"
  end

  def hand_values
    de_val = @dealer.hand.value.to_s
    pl_val = @player.hand.value.to_s

    text  = "| Score    | Score    |\n"
    text << "|  "

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

  def choices
    text  = "CHOICES\n"
    text << " 1)  Hit\n"
    text << " 2)  Stand\n"
    text << "\n"
    text << "Enter Choice:"

    body { text }
  end

  def results
    determine_winner
  end
end
