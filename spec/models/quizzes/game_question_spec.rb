require 'rails_helper'

module Quizzes
  RSpec.describe GameQuestion, type: :model do

    before(:each) do
      create_questions_in_sequence(20)
      @game = create(:game)
      @questions = Question.all
      @game_questions = GameQuestion.generate_set(@game, @questions)
    end

    it "should build a set of questions" do
      expect(@game_questions.size).to eq(@questions.size)
      game_question = @game_questions.first
      expect(game_question.game).to eq(@game)
      expect(game_question.question.answers.size).to eq(4)
    end

    it "should have one correct answer among all choices" do
      number_of_right_answers = 0
      game_question = @game_questions.first
      game_question.question.answers.each do |answer|
        number_of_right_answers = number_of_right_answers + 1 if answer.correct?
      end
      expect(number_of_right_answers).to eq(1)
    end

    it "should be able to identify the correct answer" do
      expect(
        @game_questions.first.correct?(@game_questions.first.question.correct_answer.id)
      ).to be true
    end

  end
end
