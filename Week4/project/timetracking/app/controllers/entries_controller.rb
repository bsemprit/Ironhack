class EntriesController < ApplicationController
  
  def index

  	@project = Project.find_by(id: params[:project_id])
  	if @project == nil
  		render "projects/no_project"
  	else
  		render "index"
  	end

  end

  def new
  	@project = Project.find params[:project_id]
  	@entry = @project.entries.new
  end

  def edit
  	@project = Project.find params[:project_id]
  	@entry = @project.entries.find params[:id]
  end

  def create
	@project = Project.find params[:project_id]
  	@entry = @project.entries.new entry_params

  	if @entry.save
  		redirect_to action: "index", controller: "entries", project_id: @project.id
  	else
  		render "new"
  	end
  end

  def update 
  	@project = Project.find(params[:project_id])
  	@entry = @project.entries.find(params[:id])

  	if @entry.update_attributes(entry_params)
	  	redirect_to project_entries_path(@project)
	else
	  	render "edit"
	end
  end

private

  def entry_params
  	params.require(:entry).permit(:hours, :date, :minutes)
  end
end
