class CoursePolicy < ApplicationPolicy

  def create?
    user.instructor? || user.admin?
  end

  def update
    user.instructor? || user.admin?
  end

  def destroy
    user.admin?
  end

  def show
    user.present?
  end

end
