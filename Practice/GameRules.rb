# require './StartGame.rb'


class GameRules
    
    def score_for_rolled_5_dice(dice_rolled)
        ar = dice_rolled.sort
        print  ar
        puts 

        num = 0
        temp_ar = []
        sum = 0

        if (ar[0] == ar[1] && ar[2] == ar[0])
            num = ar[2]
            temp_ar.push(ar[3], ar[4])
            elsif (ar[1] == ar[2] && ar[2] == ar[3])
            num = ar[2]
            temp_ar.push(ar[0], ar[4])
            elsif (ar[2] == ar[3] && ar[3] == ar[4])
            num = ar[2]
            temp_ar.push(ar[0], ar[1])
            else
            puts "Three same numbers are not present in this roll"
        end

        if (num == 1)
            sum += 1000
            else
            sum += (num * 100)
        end

        if (num > 0)
            for i in 0..temp_ar.length-1
                if (temp_ar[i] == 1)
                    sum += 100
                    elsif (temp_ar[i] == 5)
                    sum += 50
                end
            end

            else
            for i in 0..ar.length-1
                if (ar[i] == 1)
                    sum += 100
                    elsif (ar[i] == 5)
                    sum += 50
                end
            end
        end
        array = [sum,num]
        return array 

    end



    def score_for_rolled_4_dice(dice_rolled)
        
        ar = dice_rolled.sort
        print  ar
        puts

        num = 0
        temp_ar = []
        sum = 0

        if (ar[0] == ar[1] && ar[2] == ar[0])
            num = ar[2]
            temp_ar.push(ar[3])
            elsif (ar[1] == ar[2] && ar[2] == ar[3])
            num = ar[2]
            temp_ar.push(ar[0])
            else
            puts "Three same numbers are not present in this roll"  
        end 
        
        if (num == 1)
            sum += 1000
            else
            sum += (num * 100)
        end

        if (num > 0)
            for i in 0..temp_ar.length-1
                if (temp_ar[i] == 1)
                    sum += 100
                    elsif (temp_ar[i] == 5)
                    sum += 50
                end
            end

            else
            for i in 0..ar.length-1
                if (ar[i] == 1)
                    sum += 100
                    elsif (ar[i] == 5)
                    sum += 50
                end
            end
        end
        array = [sum,num]
        return array 
    end

        
    def score_for_rolled_3_dice(dice_rolled)
        ar = dice_rolled.sort
        print  ar
        puts

        num = 0
        sum = 0

        if (ar[0] == ar[1] && ar[2] == ar[0])
            num = ar[2]
        end

        if (num == 1)
            sum += 1000
            else
            sum += (num * 100)
        end

        for i in 0..ar.length-1
            if (ar[i] == 1 && ar[i] != num)
                sum += 100
                elsif (ar[i] == 5 && ar[i] != num)
                sum += 50
            end
        end
        array = [sum,num]
        return array 

    end 

    def score_for_rolled_dice(dice_rolled)
        
        ar = dice_rolled.sort
        print  ar
        puts

        num = 0
        sum = 0

        for i in 0..ar.length-1
            if (ar[i] == 1)
                sum += 100
                elsif (ar[i] == 5)
                sum += 50
            end
        end
        
        array = [sum,num]
        return array 
    end

end