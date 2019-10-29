require "sinatra"
require "make_todo"

get "/" do 
	@database=Tarea.all
	erb :index
end

post "/new" do
	Tarea.create(params[:newTask])
	redirect '/'
end

get "/:id/delete" do
	@task=Tarea.find(params[:id])
	erb :formDelete
end

get "/:id/complete" do
	@task=Tarea.find(params[:id])
	erb :formComplete
end

put "/:id/put" do
	Tarea.update(params[:id])
	redirect '/'
end

delete "/:id/deleteTask" do
	Tarea.destroy(params[:id])
	redirect '/'
end


