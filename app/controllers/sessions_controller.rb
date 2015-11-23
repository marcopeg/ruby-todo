class SessionsController < ApplicationController
  def new
    render :layout => 'public'
  end

  def create
    result = params[:session][:uname] == 'aaa' && params[:session][:passw] == 'bbb'
    if result
      session[:current_author] = 1
      return redirect_to :controller => 'my_tasks'
    else
      @error = true
    end
    render :new, :layout => 'public'
  end

  def delete
    session[:current_author] = nil
    redirect_to :action => 'new'
  end
end
