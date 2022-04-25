require './StartGame.rb'

class Players
    puts "Welcome to Players List...."

    @@players_list = Hash.new
    def players_of_game (names)

        player_scored = 0
        turn = 1
        winner = ""
        received_player_names = names
        # print "It is printing from players class #{received_player_names}"
        puts
        # p_name = Hash.new
        for i in 0..received_player_names.length-1
            @@players_list[received_player_names[i]] = 0
        end
        # print "Length of an hash is : #{@@players_list.length}"
        # puts

        while (turn > 0)

            puts "Turn_#{turn} starts : "
            start = StartGame.new
            @@players_list.each do |key, value| 
                p_name = "#{key}"
                p_score = value 
                player_scored = start.roll_dice(p_name,p_score)
                @@players_list["#{key}"] += player_scored 
            end
            puts "===============#{@@players_list}=================="

            @@players_list.each do |key, value|
                if (value > 3000)
                    winner = key
                    break
                end 
            end

            if (winner != "")
                turn = 0
                else
                turn += 1
            end 

        end

        puts "Winner is #{winner} and score is : #{@@players_list[winner]}"
    end
end
