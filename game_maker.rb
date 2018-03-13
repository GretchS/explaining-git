class Player
  
  attr_accessor :name, :health, :power
  
  def initialize(name, health, power)
    @name = name
    @health = health
    @power = power
  end

  def isAlive
    @health > 0
  end

  def hit(opponent)
    opponent.health -= self.power
  end

  def to_s
    "#{name}: Health: #{health}, Power: #{power}"
  end

end

def fight(player1, player2)
  while player1.isAlive && player2.isAlive
    player1.hit(player2)
    player2.hit(player1)
    show_info(player1, player2)
  end

  if player1.isAlive
    puts "#{player1.name} WON!"
  elsif player2.isAlive
    puts "#{player2.name} WON!"
  else
    puts "TIE!"
  end

end

def show_info(*player)
  player.each {|x| puts x}
end

#initialize players
puts "PLAYER INFO"
player1 = Player.new("Player 1", 1+rand(200), 1+rand(25))
player2 = Player.new("Player 2", 1+rand(200), 1+rand(25))

#show player information
show_info(player1, player2)

puts "LETS FIGHT!"
fight(player1, player2)

