class PostPolicy < ApplicationPolicy

  class Scope
    attr_reader :user, :scope

    def initialize(user, scope)
      raise Pundit::NotAuthorizedError, "Must be logged in" unless user
      @user = user
      @scope = scope
    end

    def index?
      true
    end

    def resolve
      if user.admin? || user.moderator?
        scope.all
      else
        scope.where(user_id: user.id)
      end
    end
  end

  def update?
    user.admin? or not post.published?
  end

  def destroy?
    user.present? && (record.user == user || user.moderator? || user.admin?)
  end
end