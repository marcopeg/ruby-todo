class SessionsController < ApplicationController
  def new
    render :layout => 'public'
  end

  def create

    result = params[:session][:uname] == 'aaa' && params[:session][:passw] == 'bbb'
    if result
      @success = true
    else
      @error = true
    end

    render :new, :layout => 'public'
  end
end
