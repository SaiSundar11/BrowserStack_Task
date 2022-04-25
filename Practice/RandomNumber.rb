class RandomNumber
    def randomNumber_iteration(itr)
        array = []
        for i in 1..itr
          tempNum = rand(1..6)
          array.push(tempNum)
        end
        # print array
        return array
    end
end