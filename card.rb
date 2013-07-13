class Card
  attr_reader :face,
              :rank,
              :suit,
              :value

  def initialize(rank, suit)
    @rank  = rank
    @suit  = suit
    value!
  end

  def face
    "#{rank} of #{suit}"
  end

  def value!
    @value = case rank
             when "A"                      then 11
             when "T" || "J" || "Q" || "K" then 10
             else                               rank.to_i
             end
  end
end
