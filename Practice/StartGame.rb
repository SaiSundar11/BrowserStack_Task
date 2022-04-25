require './RandomNumber.rb'
require './GameRules.rb'

class StartGame
    
    def roll_dice(p_name,p_score)

        puts "Starting the game"
        print "Player #{p_name} : scored so far => #{p_score} & rolls: "
        puts 

        p_scored = p_score
        score = 0
        re_score = 0
        re_sc = []
        ran = RandomNumber.new
        dice_rolled = ran.randomNumber_iteration(5)

        game_rules = GameRules.new
        score_num = game_rules.score_for_rolled_5_dice(dice_rolled)
        # print score_num
        score = score_num[0]
        num = score_num[1]
        
        scoring = 0
        scoring_count = 0
        for i in 0..dice_rolled.length-1
            if (dice_rolled[i] == num)
                if(scoring_count <= 3)
                    scoring += 1
                    scoring_count += 1 
                end
                elsif (dice_rolled[i] == 1 || dice_rolled[i] == 5)
                scoring += 1
            end
        end

        if (scoring == 5)
            puts "Do you want to roll dice again ? (yes/no): "
            choice = gets.chomp
            if (choice == "yes" || choice == "y")
                dice_rolled = ran.randomNumber_iteration(scoring)
                re_sc = game_rules.score_for_rolled_5_dice(dice_rolled)
                re_score = re_sc[0]
                num = re_score
                else
                puts "You did not entered 'yes' so your turn is ended and your score is #{score}" 
            end
            else
            puts "All dice are not scoring dice in this roll" 
        end

        non_scoring = 0
        for i in 0..dice_rolled.length-1
            if (dice_rolled[i] == num)

                elsif ( dice_rolled[i] == 2 || dice_rolled[i] == 3 || dice_rolled[i] == 4 || dice_rolled[i] == 6)
                non_scoring += 1
            end
        end
        
        # puts "Do you want to roll the non-scoring #{non_scoring} dice? (y/n): "
        # choice = gets.chomp
        # if (choice == "y")
        #     dice_rolled = ran.randomNumber_iteration(non_scoring)
        #     if (non_scoring == 5)
        #         re_sc = game_rules.score_for_rolled_5_dice(dice_rolled)
        #         re_score = re_sc[0]
        #         elsif (non_scoring == 4)
        #         re_sc = game_rules.score_for_rolled_4_dice(dice_rolled)
        #         re_score = re_sc[0]
        #         elsif (non_scoring == 3)
        #         re_sc = game_rules.score_for_rolled_3_dice(dice_rolled)
        #         re_score = re_sc[0]
        #         else
        #         re_sc = game_rules.score_for_rolled_dice(dice_rolled)
        #         re_score = re_sc[0]
        #     end
        #     else
        #     re_score = 1
        #     print "You did not entered 'y' so your turn is getting end and your score is #{score} " 
        # end 
        
        non_score = 0
        while (non_scoring > 0 && score != 0)
            for i in 0..dice_rolled.length-1
                if (dice_rolled[i] == num)

                    elsif(dice_rolled[i] == 2 || dice_rolled[i] == 3 || dice_rolled[i] == 4 || dice_rolled[i] == 6)
                    non_score += 1
                end
            end
            if (non_score == 0)
                break
            end

            print "Do you want to roll the non-scoring #{non_score} dice? (y/n): "
            choice = gets.chomp
            if (choice == "y")
                dice_rolled = ran.randomNumber_iteration(non_score)
                if (non_score == 4)
                    re_sc = game_rules.score_for_rolled_4_dice(dice_rolled)
                    re_score = re_sc[0]
                    num = re_sc[1]
                    score += re_score
                    elsif(non_score == 3)
                    re_sc = game_rules.score_for_rolled_3_dice(dice_rolled)
                    re_score = re_sc[0]
                    score += re_score
                    num = re_sc[1]
                    else
                    re_sc = game_rules.score_for_rolled_dice(dice_rolled)
                    re_score = re_sc[0]
                    score += re_score
                    num = re_sc[1]
                end
            else
                print "You did not entered 'y' so your turn is getting end and your score is #{score} " 
                puts 
                break
            end

            if (re_score == 0)
                score = 0
                break
            end
            non_scoring = 0
            non_scoring = non_score
            non_score = 0
        end
                            
        puts "total Score #{score}"

        if (p_scored >= 300 || score >= 300)
            return score
            else
            return 0
        end 

    end

end
