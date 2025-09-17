class QuizController < ApplicationController
  before_action :authenticate_user!

  def show
    quiz = Quiz.find(params[:id])
    render(json: quiz, include: {questions: {include: :answers}})
  end

  def create
    lesson = Lesson.find(params[:lesson_id])
    authorize(lesson.course, :update?)
    quiz = lesson.build_quiz

    if quiz.save
      render(json: quiz, status: :created)
    else
      render(json: quiz.erros, status: :unprocessable_entity)
    end
  end

end
