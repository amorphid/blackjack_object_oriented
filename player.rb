class Player
  attr_reader :hand

  def hand
    @hand ||= Hand.new
  end
end
