module HideBlockingUser
  extend ActiveSupport::Concern

  included do
    before_action :set_current
  end

  private

  def set_current
    Current.blocking_ids = current_user&.blocking&.ids
  end
end
