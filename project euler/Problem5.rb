# Problem 5
# =========


#    2520 is the smallest number that can be divided by each of the numbers
#    from 1 to 10 without any remainder.

#    What is the smallest positive number that is evenly divisible by all of
#    the numbers from 1 to 20?


  # 1) Do 1-20 divide into this dividend without any remainder?
  # 2) Increase the number by 20, and true again

  def LCM(divisor) 
    # within the question, 2520 was the identified as the lowest number divisible by 1-10. Therefore, for this iteration, it is our
    # starting point. Ideally, you would take it out of the params of Divisible...OrLess, and then define it as zero and work from 
    # there so that this formula is extremely flexible.

    dividend = 2520
    while true
      if DivisibleByNumberOrLess(dividend, divisor)
        return dividend
      else
        dividend += divisor
      end
    end

  end


  def DivisibleByNumberOrLess(dividend, divisor)
    potentially_divisible = true

    while divisor > 0 && potentially_divisible == true
      if dividend % divisor == 0
        divisor -= 1
      else
        divisor = 20
        potentially_divisible = false
      end
    end

    if potentially_divisible == true
      true
    else
      false
    end

  end

puts LCM(20)
