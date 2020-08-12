class Player
    attr_accessor :name, :player_sym
    @@zero = " "
    @@one = " "
    @@two = " "
    @@three = " "
    @@four = " "
    @@five = " "
    @@six = " "
    @@seven = " "
    @@eight = " "

    def initialize name
        @name = name
        @player_sym = "N"
    end

    def display_grid
        puts ("     |     |     ")
        puts ("  #{@@zero}  |  #{@@one}  |  #{@@two}  ")
        puts ("     |     |     ")
        puts ("-----+-----+-----")
        puts ("     |     |     ")
        puts ("  #{@@three}  |  #{@@four}  |  #{@@five}  ")
        puts ("     |     |     ")
        puts ("-----+-----+-----")
        puts ("     |     |     ")
        puts ("  #{@@six}  |  #{@@seven}  |  #{@@eight}  ")
        puts ("     |     |     ")
    end
    def challenge
        self.display_grid
        print "#{self.name}'s choice is? "
        choice = gets.chomp
        case choice
        when "up left" then @@zero = self.player_sym if @@zero == " "
        when "up center" then @@one = self.player_sym  if @@one == " "
        when "up right" then @@two = self.player_sym if @@two == " "
        when "center left" then @@three = self.player_sym if @@three == " "
        when "center center" then @@four = self.player_sym if @@four == " "
        when "center right" then @@five = self.player_sym if @@five == " "
        when "down left" then @@six = self.player_sym if @@six == " "
        when "down center" then @@seven = self.player_sym if @@seven == " "
        when "down right" then @@eight = self.player_sym if @@eight == " "
        end
    end
end

class Player1 < Player

end

class Player2 < Player

end

#Instructions
print "Player One?: "
player1 = Player1.new(gets.chomp)
print "Player Two?: "
player2 = Player2.new(gets.chomp)
puts "------------"
puts "Rules: "
puts "-> #{player1.name} is 'X', #{player2.name} is 'O'"
puts "-> Choices are:\n-->     up left --   up center   -- up right\n--> center left -- center center -- center right\n-->   down left --  down center  -- down right"
puts "-> NOT CHOOSING ANY OF THESE COMMANDS, OR TRYING TO SELECT AN ALREADY CHOSEN CELL, WILL SKIP YOUR TURN"
puts "-----------"
#Instructions

player1.player_sym = "X"
player2.player_sym = "O"

while true
    player1.challenge
    player2.challenge
end
