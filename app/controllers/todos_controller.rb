class TodosController < ApplicationController
    before_action :set_todo, only: [:show, :update, :destroy]
  
    # GET /todos
    def index
      @todos = Todo.all
      json_response(@todos)
    end
  
    # POST /todos
    def create
      @todo = Todo.create!(todo_params)
      json_response(@todo, :created)
    end
  
    # GET /todos/:id
    def show
      json_response(@todo)
    end
  
    # PUT /todos/:id
    def update
      @todo.update(todo_params)
      head :no_content
    end
  
    # DELETE /todos/:id
    def destroy
      @todo.destroy
      head :no_content
    end
  
    private
  
    def todo_params
      # whitelist params
      params.permit(:title, :created_by)
    end
  
    # callback method to find a todo using its id
    # in case the record does not exist, ActiveRecord will throw an exception
    # rescued from this exception by throwing a 404 message (controllers/concerns/exception_handler.rb)
    def set_todo
      @todo = Todo.find(params[:id])
    end
  end
