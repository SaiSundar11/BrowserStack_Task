class DiceRules
    def check_dice_numbers(array)
      arr = array
      ar = arr.sort    # [1, 2, 2, 2, 3]
      print ar
      puts
           
      # if ((ar[0] == ar[1] && ar[2] == ar[0]) || (ar[1] == ar[2] && ar[2] ==   ar[3]) || (ar[1] == ar[3] && ar[3] == ar[4])
          
      ch = ""
      num = 0
      sum = 0
      if (ar[0] == ar[1] && ar[2] == ar[0])
        num = ar[2]
        ch = "a"
        elsif (ar[1] == ar[2] && ar[2] == ar[3])
        num = ar[2]
        ch = "b"
        elsif (ar[2] == ar[3] && ar[3] == ar[4])
        num = ar[2]
        ch = "c"
        else
        puts "Three same numbers are not present in this array"
      end
         
      case num
        when 1
          sum += 1000
        when 2
          sum += 200
        when 3
          sum += 300
        when 4
          sum += 400
        when 5
          sum += 500
        when 6 
          sum += 600
        else
          puts "Array did't contain 3 same numbers in dice"
      end
         
      case ch
        when "a"
          if(ar[3] == 1 || ar[4] == 1)
            sum += 100
            elsif (ar[3] == 5 || ar[4] == 5)
            sum += 50
          end
        when "b"
          if(ar[0] == 1 || ar[4] == 1)
            sum += 100
            elsif (ar[0] == 5 || ar[4] == 5)
            sum += 50
          end
        when "c"
          if(ar[0] == 1 || ar[1] == 1)
            sum += 100
            elsif (ar[0] == 5 || ar[1] == 5)
            sum += 50
          end
      end
         
      if (num != 0)
        puts ("So this player dies score  : #{sum}")
        else
        for i in 0..ar.length-1
          if (ar[i] == 1)
            sum += 100
            elsif (ar[i] == 5)
            sum += 50
            else
            # sum = 0
            # puts ("this player dies does not score any thing and sum : #{sum}")
          end
        end 
        puts ("So this player dies score  : #{sum}")
       
        count = 0
        for i in 0..ar.length-1
          if (ar[i] == 2 || ar[i] == 3 || ar[i] == 4 )
            count += 1
          end
        end 
             
        temp_arr = []
        print "Do you want to roll the non-scoring #{count} dice? (y/n): "
        bolean = gets.chomp
        if (bolean == "y")
          print "Enter the #{count} numbers"
          for i in 0..count-1
            temp_dice_num = gets.chomp.to_i
            temp_arr.push(temp_dice_num)
          end
        end
        puts "temperary array length is #{temp_arr.length-1}"
        as = temp_arr.sort
        ch_n = ""
        num_n = 0
        if (temp_arr.length == 5)
          puts "Call the above mehtod again."
          elsif(temp_arr.length == 4)
            if (as[0] == as[1] && as[1] == as[2])
              as[2] = num_n
              ch_n = "a"
              elsif(as[1] == as[2] && as[2] == as[3])
                as[2] == num_n
                ch_n == "b"
            end
          elsif(temp_arr.length == 3)
            if (as[0] == as[1] && as[1] == as[2])
              as[2] = num_n
              # ch_n = "a"
            end
        end
       
        case num_n
          when 1
            sum += 1000
          when 2
            sum += 200
          when 3
            sum += 300
          when 4
            sum += 400
          when 5
            sum += 500
          when 6 
            sum += 600
          else
          puts "Array did't contain 3 same numbers in dice"
        end
       
        if (num_n == 0)
          sum = 0
          for i in 0..as.length-1
            if (as[i] == 1)
              sum += 100
              elsif (as[i] == 5)
              sum += 50
              else
              # sum = 0
              # puts ("this player dies does not score any thing and sum : #{sum}")
            end
          end 
          puts ("So this player dies score  : #{sum}")
        end
      end  
    end
    end
       
    # arrays = [2, 2, 3, 3, 4]
    # my_array = DiceRules.new
    # my_array.check_dice_numbers(arrays)
       
    print "Number of players in the Game : "
    players = gets.chomp.to_i
    # print "Number of players in the Game is #{players}"
    puts 
    print "Enter the dice of the player : "
    dice_array = []
    for i in 1..5
      dice_number = gets.chomp.to_i
      dice_array.push(dice_number)
    end
    my_array = DiceRules.new
    my_array.check_dice_numbers(dice_array)