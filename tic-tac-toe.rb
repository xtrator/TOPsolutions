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
    def endgame 
        (@@zero == @@one && @@one == @@two && @@zero != " ")      ? (p "#{self.name} WON!!"; $gameon = true) : nil
        (@@three == @@four && @@four == @@five && @@three != " ") ? (p "#{self.name} WON!!"; $gameon = true) : nil
        (@@six == @@seven && @@seven == @@eight && @@six != " ")    ? (p "#{self.name} WON!!"; $gameon = true) : nil
        (@@zero == @@three && @@three == @@six && @@zero != " ")  ? (p "#{self.name} WON!!"; $gameon = true) : nil
        (@@one == @@four && @@four == @@seven && @@one != " ")    ? (p "#{self.name} WON!!"; $gameon = true) : nil
        (@@two == @@five && @@five == @@eight && @@two != " ")    ? (p "#{self.name} WON!!"; $gameon = true) : nil
        (@@zero == @@four && @@four == @@eight && @@zero != " ")  ? (p "#{self.name} WON!!"; $gameon = true) : nil
        (@@two == @@four && @@four == @@six && @@two != " ")      ? (p "#{self.name} WON!!"; $gameon = true) : nil
        display_grid if $gameon
    end
    def illegal 
        puts "---------------------------------"
        puts "ILLEGAL CHOICE BY ####{self.name}###, TRY AGAIN"
        puts "!!!!!!!!!!!!!!!!!!!!!!!!"
        self.challenge
    end
    def challenge
        self.display_grid 
        print "#{self.name}'s choice is? "
        choice = gets.chomp
        case choice 
        when "up left"       then @@zero == " " ?  @@zero  = self.player_sym : illegal
        when "up center"     then @@one == " " ?   @@one   = self.player_sym : illegal
        when "up right"      then @@two == " " ?   @@two   = self.player_sym : illegal
        when "center left"   then @@three == " " ? @@three = self.player_sym : illegal
        when "center center" then @@four == " " ?  @@four  = self.player_sym : illegal
        when "center right"  then @@five == " " ?  @@five  = self.player_sym : illegal
        when "down left"     then @@six == " " ?   @@six   = self.player_sym : illegal
        when "down center"   then @@seven == " " ? @@seven = self.player_sym : illegal
        when "down right"    then @@eight == " " ? @@eight = self.player_sym : illegal
        end
        endgame
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
puts "--------------------------------------"
#Instructions

player1.player_sym = "X"
player2.player_sym = "O"

$gameon = false

while true
    player1.challenge
    puts "--------------------"
    break if $gameon
    player2.challenge
    puts "--------------------"
    break if $gameon
end
