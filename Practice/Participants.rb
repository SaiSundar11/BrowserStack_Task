require './Players.rb'
require './StartGame.rb'


class Participants
    print "Enter Number of Players: "
    no_Of_players = gets.chomp.to_i
    player_Names = []
    for i in 1..no_Of_players
        print "Enter The Player_#{i} Name: "
        player_Name = gets.chomp
        puts player_Name
        player_Names.push(player_Name)
    end
    print player_Names
    
    p = Players.new
    players_list = p.players_of_game(player_Names)
    puts players_list

end

part = Participants.new