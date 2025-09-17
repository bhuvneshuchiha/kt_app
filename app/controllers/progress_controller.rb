class ProgressController < ApplicationController
  before_action :authenticate_user!

  def create
    lesson = Lesson.find(params[:lesson_id])
    progress = current_user.progresses.find_or_initialize_by(lesson: lesson)
    progress.completed = params[:completed]

    if progress.save
      render(json: progress)
    else
      render(json: progress.errors, status: :unprocessable_entity)
    end
  end

  def update
    progress = Progress.find(params[:id])
    authorize(progress)
    if progress.update(progress_params)
      render(json: progress)
    else
      render(json: progress.errors, status: :unprocessable_entity)
    end
  end

  private

  def progress_params
    params.require(:progress).permit(:complete)
  end

end
