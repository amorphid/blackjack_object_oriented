# Blackjack

General requirements:
* There player and a dealer.
* Everyone gets a hand with two cards.
* Players plays first until stands or busts (>21)
* If player busts, dealer doesnt' play.
* Dealer stays on 17 or greater.
* Winner is one with highest score.  Busted players lose automatically.

# Ruby OO Programming, Newbie Edition.
v2013-07-11-0949.1

## Style Guide
1.  Everything goes in a class.
2.  If a class had more than 6 methods, including the initialize method, try
breaking it into two methods.
3.  If a method has more than 5 lines, break it's probably too big.
4.  If you have arrays within arrays, you're probably missing an object.
5.  Objects are abstractions that dare inspired by, not driven by, the physical
world.
  * Example:  If you have a card game with a single dealer and players that
  each hold the same kind of hand, you could use dealer true/false to determine
  how the hand gets used.
6.  Consider wrapping a collection of objects into a methods or class.
  * Example:  You have a game class w/ @cards = [1,2,3,4,5].


## Philosophy
1.  The only way to write good code is to have written lots of bad code.
2.  Ask any experienced developer how often they screw up.  They'll probably say
pretty much all the time.
3.  Learn how to test.  The longer you wait, the harder it becomes.
