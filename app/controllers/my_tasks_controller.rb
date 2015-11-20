class MyTasksController < ApplicationController
    def index
        @tasks = Task.where(author_id: getLoginId)
    end
end
