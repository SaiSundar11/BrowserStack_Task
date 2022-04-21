require './GreedRules.rb'
require './RandomNumber.rb'

$ran = RandomNumber.new
$greed = GreedRules.new


class DiceGame

    print "Enter No of round for the game : "
    rounds = gets.chomp.to_i
    player1_TotalScore = 0
    player2_TotalScore = 0

    while (rounds > 0)
        player1_Scored_this_round = 0
        player2_Scored_this_round = 0
        print "Enter the Number of players for round: "
        number_players = gets.chomp.to_i
        puts "#{number_players} ==> player participating in the game."
        playercount = 1
        while (number_players > 0)
          if (playercount == 1)
            puts "Player_#{playercount} roles : "
            playerroled = $ran.randomNumber_iteration(5)
            print playerroled
            puts  
          
            player1_Scored_this_round = $greed.dice_numbers(playerroled)
            puts

            elsif(playercount == 2)
            puts "Player_#{playercount} roles : "
            playerroled = $ran.randomNumber_iteration(5)
            print playerroled
            puts  
          
            player2_Scored_this_round = $greed.dice_numbers(playerroled)
            puts
          end
            number_players -= 1
            playercount += 1
        end
        rounds -= 1
        player1_TotalScore += player1_Scored_this_round
        player2_TotalScore += player2_Scored_this_round
    end
    puts "Total score of player_1 :  #{player1_TotalScore}"
    puts "Total score of player_2 :  #{player2_TotalScore}"
  
end