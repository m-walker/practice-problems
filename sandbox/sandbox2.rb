require 'pry'
def divisible_by_eleven(num)
  if num % 11 == 0
    true
  else
    false
  end
end

def divisible_by_seven(num)
  if num % 7 == 0
    true
  else
    false
  end
end

def participant_count_going_up?(number_that_has_been_spoken_and_divisible_by_seven_count)
  if number_that_has_been_spoken_and_divisible_by_seven_count == 0 || number_that_has_been_spoken_and_divisible_by_seven_count.even?
    true
  else
    false
  end
end

def formatted_output(current_speaker, current_number, number_of_players, final_number)
  current_speaker_digits = current_speaker.to_s.size
  current_number_digits = current_number.to_s.size
  speaker_spaces_needed = number_of_players.to_s.size - current_speaker_digits + 1
  number_spaces_needed = final_number.to_s.size - current_number_digits + 1
  
  puts "Player #{current_speaker}" + " "*speaker_spaces_needed + "will say" + " "*number_spaces_needed + "#{current_number}"
end


def counting_game(number_of_players, final_number)
  current_speaker = 1
  current_number = 1
  number_that_has_been_spoken_and_divisible_by_seven_count = 0
  participants = (1..number_of_players).to_a

  until current_number > final_number
    formatted_output(current_speaker, current_number, number_of_players, final_number)

    if divisible_by_seven(current_number)
      number_that_has_been_spoken_and_divisible_by_seven_count += 1
    end

    if participant_count_going_up?(number_that_has_been_spoken_and_divisible_by_seven_count) && divisible_by_eleven(current_number)
        if participants.include?(current_speaker + 2)
          current_speaker += 2
        else
          current_speaker = current_speaker + 2 - 10
        end
    elsif participant_count_going_up?(number_that_has_been_spoken_and_divisible_by_seven_count)
      if participants.include?(current_speaker + 1)
        current_speaker += 1
      else
        current_speaker = 1
      end
    elsif divisible_by_eleven(current_number)
      if participants.include?(current_speaker - 2)
        current_speaker -= 2
      else
        current_speaker = current_speaker - 2 + 10
      end
    else
      if participants.include?(current_speaker - 1)
        current_speaker -= 1
      else
        current_speaker = 10
      end
    end
    current_number += 1
  end
end

counting_game(10,100)
