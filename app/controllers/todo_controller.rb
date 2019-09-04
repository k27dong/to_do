class TodoController < ApplicationController

  def index # list all items
    @todos = Todo.all
  end

  def new
    @todo = Todo.new
  end
  
  def show
    @todo = Todo.find(params[:id])
  end

  def create
    @todo = Todo.new(todos_params)

    if @todo.save
      redirect_to @todo
    else
      render 'new'
    end
  end



  def update
  end

  def destroy
    @todo = Todo.find(params[:id])
    @todo.destroy

    redirect_to todo_index_url
  end


  private
  def todos_params
    params.require(:todo).permit(:title, :content, :ddl)
  end
    
end
