class NotificationsController < ApplicationController
  def index
    @notifications = Notification.where(published: true).order('created_at desc').all
  end
end
