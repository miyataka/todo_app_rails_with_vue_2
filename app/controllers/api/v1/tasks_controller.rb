class Api::V1::TasksController < ApplicationController
    #GET /api/v1/tasks
    def index
        @tasks = Task.order('updated_at DESC')
    end

    # POST /api/v1/tasks
    def create
        @task = Task.new(task_params)

        if @task.save
            render :show, status: :created
        else
            render json: @task.error, status: :unprocessable_entity
        end
    end

    # PUT, PATCH /api/v1/tasks/[:id]
    def update
        # get :id from post/put params
        @task = Task.find(params[:id])

        if @task.update(task_params)
            render :show, status: :ok
        else
            render json: @task.error, status: :unprocessable_entity
        end
    end

    private
        def task_params
            params.fetch(:task, {}).permit(
                :name, :is_done
            )
        end
end
