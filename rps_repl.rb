#If the player chooses no, the game will automatically stop.
def introgame
    @roundcount = 1

puts "\nDo you want to play a game? (Y)es or (N)o?"
choice = gets.chomp.capitalize
  case choice
    when "Yes"
    puts "\nWelcome to Rock Paper Scissors Shoot!"
    game
  when "Y"
    puts "\nWelcome to Rock Paper Scissors Shoot!"
    game
  when "No"
    puts "\nPeace Out, Cub Scout!"
    gameover
  when "N"
    puts "\nPeace Out, Cub Scout!"
    gameover
  else
    puts "\nThat is not an option CHOOSE AGAIN
    "
    introgame
end
end

def roundcount
  @roundcount = @roundcount + 1
   puts "You are on round #{@roundcount}"
end

#Player should enter rock, paper, or scissors by the first letter.
#Computer will randomize an answer.
 def game
    puts "\nTake your pick: (R)ock, (P)aper, (S)cissors"
    sleep(1)
    puts "\nShoot!"

   computer = "rps"[rand(3)].chr
   player = gets.chomp.downcase
    case [player, computer]
      when ['r','s'],['s','p'],['p','r']
        puts "\nWIN"
        puts "\nThe computer chose #{computer}."
        roundcount
        again
      when ['r','r'],['p','p'],['s','s']
        puts "\nTIE"
        puts "\nThe computer chose #{computer}."
        roundcount
        again
      when ['s','r'],['p', 's'],['r', 'p']
        puts "\nLOSER"
        puts "\nThe computer chose #{computer}."
        roundcount
        again
      else
        puts "\nARE YOU A MORON? CHOOSE R,P,S"
        game
      end
end

#roundcount will keep track of what round the player is on.
#player has the option to quit.
def again
      #puts "You are on round #{@roundcount}"
      puts "\nDo you want to play again? Yes or No?"
      answer = gets.chomp.capitalize
        case answer
        when "Yes"
          game
        when "Y"
          game
        when "No"
          gameover
        when "N"
          gameover
        else
          puts "\nYOU NEED TO PUT YES OR NO!"
          again
        end
end

def decision
end

def gameover
  puts "\nByeeeeeeee
  "
end


introgame
