require 'sinatra'
require 'sinatra/reloader'

require_relative('lib/task.rb')
require_relative('lib/todolist.rb')

todo_list = TodoList.new("Bianca")

task = Task.new("Walk The Day")
task1 = Task.new("Take out your car")
task2 = Task.new("Do your glasses")
task3 = Task.new("Buy a water")

todo_list.add_task(task)
todo_list.add_task(task2)
todo_list.add_task(task3)
todo_list.add_task(task1)

get "/" do 
	erb :home
end

get "/tasks" do
	@task_list = todo_list.tasks
	erb :tasks
end

get "/new_task" do
	erb :new_task
end

post "/create_task" do
	task_content = params[:task_content]
	new_task = Task.new(task_content)
	todo_list.add_task(new_task)
	redirect to "/tasks"
end