class HistoryController < ApplicationController
  before_action :authenticate_user!
  def show
    @histories = History.all
  end

  def add
    history = History.new
    history[:user_id] = current_user[:id]
    if current_user[:before_action] == 0
      history[:action] = current_user[:before_action] = 1
    else
      history[:action] = current_user[:before_action] = 0
    end
    history.save
    current_user.save
    redirect_to :action => "show"
  end
end
