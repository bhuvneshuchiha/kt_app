class ProgressPolicy < ApplicationPolicy

  def update?
    user.admin? || record.user == user
  end

end
