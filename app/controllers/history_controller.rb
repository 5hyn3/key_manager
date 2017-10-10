class HistoryController < ApplicationController
  before_action :authenticate_user!
  def show
    @histories = History.all
  end

  def add
    history = History.new
    history[:user_id] = current_user[:id]
    history[:action] = 0
    history.save
    redirect_to :action => "show"
  end
end
