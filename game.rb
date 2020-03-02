class Game
  def gen_num
    rand(20)
  end
  def ask_question(val1, val2)
    index = rand(3)
    questions_arr = [
      "what is the sum of #{val1} and #{val2}",
      "What is #{val1} times #{val2}",
      "What is #{val1} minus #{val2}"
    ]
    answers_arr = [val1 + val2, val1 * val2, val1 - val2]
    [questions_arr[index], answers_arr[index]]
  end
end



