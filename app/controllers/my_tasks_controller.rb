class MyTasksController < ApplicationController
    def index
        @tasks = Task.where(author_id: getLoginId)
        render :layout => 'public'
    end
end
