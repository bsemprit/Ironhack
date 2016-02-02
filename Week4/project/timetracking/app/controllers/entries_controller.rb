class EntriesController < ApplicationController
  def index

  	@project = Project.find_by(id: params[:project_id])
  	if @project == nil
  		render "projects/no_project"
  	else
  		render "index"
  	end

  end
end
