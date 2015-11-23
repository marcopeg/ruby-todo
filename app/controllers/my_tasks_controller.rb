class MyTasksController < ApplicationController
    def index
        current_author = session[:current_author]

        if (current_author == nil)
            redirect_to :controller => 'sessions', :action => 'new'
        else
            @tasks = Task.where(author_id: current_author)
            render :layout => 'public'
        end
    end
end
