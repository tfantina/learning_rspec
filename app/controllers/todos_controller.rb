class TodosController < ApplicationController
  def index
    @todos = Todo.all
  end

  def new
    @todo = Todo.new
  end

  def create
    @todo = Todo.create(todo_params)
    if @todo.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  private

  def todo_params
    params.require(:todo).permit(:title)
  end

end
