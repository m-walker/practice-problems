def num_repeats(string)
  repeat_array = []
  idx1 = 0
  idx2 = 1

  while i1 < string.length
    while i2 < string.length
      if (string[i1] == string[i2])
        repeat_array << string[i1]
      end
      idx2 += 1
    end
    idx1+=1
    idx2+=idx1+1
  end

    repeat_array.uniq.length
  end