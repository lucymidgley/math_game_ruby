class Game
  @@score_player1 = 0
  @@score_player2 = 0
  def add_point_player1
    @@score_player1 += 1
  end
  def add_point_player2
    @@score_player2 += 1
  end
  def how_many_points
    puts(@@score_player1, @@score_player2)
  end
  def gen_num
    rand(20)
  end
  def question_and_answer(val1, val2)
    INDEX = rand(3)
    questions_arr = [
      "what is the sum of #{val1} and #{val2}",
      "What is #{val1} times #{val2}",
      "What is #{val1} minus #{val2}"
    ]
    answers_arr = [val1 + val2, val1 * val2, val1 - val2]
    [questions_arr[INDEX], answers_arr[INDEX]]
  end
end



