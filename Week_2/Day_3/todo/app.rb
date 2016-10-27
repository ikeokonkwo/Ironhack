require 'sinatra'
require 'sinatra/reloader'
require_relative('lib/task.rb')
require_relative('lib/todo_list.rb')

todo_list = TodoList.new("my_list")
todo_list.add_task(Task.new("walk the dog"))
todo_list.add_task(Task.new("go to Ironhack"))

get "/tasks" do 
	@tasks = todo_list.tasks


	erb(:task_index)
end 

get "/new_task" do 
	erb(:new_task)

end 

post "/create_task" do 
	new_task = Task.new(params[:new_task]) 
	todo_list.add_task(new_task)
	redirect("/tasks")

	#take submitted info params & redurect 
end 

post "/complete" do 
	id = params[:the_id].to_i
	the_task = todo_list.find_task_by_id(id)
	the_task.complete!
	redirect("/tasks")
end 