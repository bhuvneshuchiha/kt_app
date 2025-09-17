class CourseController < ApplicationController
  before_action :authenticate_user!

  def index
    @courses = Courses.all
    render(json: @courses)
  end

  def show
    @course = Course.find(params[:id])
    render(json: @course, include: :lessons)
  end

  def create
    authorize(course)
    @course = current_user.courses.build(course_params)
    if @course.save
      render(json: @course, status: :created)
    else
      render(json: @course.errors, status: :unprocessable_entity)
    end
  end

  private

  def course_params
    params.require(:course).permit(:title, :description)
  end

end
