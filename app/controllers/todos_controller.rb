class TodosController < ApplicationController
  def index
  	@todo_items = Todo.all 
	@new_todo = Todo.new 
 
	render :index
  end

  def  delete
   #complete
  end 

  def add 
 	todo = Todo.create(:todo_item => params[:todo][:todo_item]) 
 	unless todo.valid? 
 		flash[:error] = todo.errors.full_messages.join("<br>").html_safe  
    else
    	flash[:success] = "Todo added successfully"

    	 
         redirect_to :action => 'index' 
    end 

private

  def todos_params
     params.require(:todo).permit(:todo_item, :done)
  end


end
