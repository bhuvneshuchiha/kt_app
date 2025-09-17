class LessonController < ApplicationController
  before_action :authenticate_user?

  def index
    @lessons = Lesson.where(course_id: params[:course_id])
    render(json: @lessons)
  end

  def show
    @lesson = Lessons.find(params[:id])
    render(json: @lesson, include: :quiz)
  end

  def create
    @course = Course.find(params[:course_id])
    authorize(@course, :update?)
    @lesson = @courses.lessons.build(lesson_params)
    if @lesson.save
      render(json: @lesson, stauts: :created)
    else
      render(json: @lesson.errors, stauts: :unprocessable_entity)
    end
  end

  private

  def lesson_params
    params.require(:lesson).permit(:title, :video_url)
  end

end
