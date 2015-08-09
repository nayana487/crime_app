class IncidentsController < ApplicationController
  def new
    @region = Region.find(params[:region_id])
    @incident = Incident.new
  end

  def create
    @region = Region.find(params[:region_id])
    @incident = @region.incidents.create(incident_params.merge(user_id: session[:user]["id"]).merge(name: session[:user]["username"]))
    redirect_to region_path(@region)
  end

  def show
    @incident = Incident.find(params[:id])
  end

  def edit
    @incident = Incident.find(params[:id])
  end

  def update
    @incident = Incident.find(params[:id])
    @incident.update(incident_params)
    redirect_to incident_path(@incident)
  end

  def destroy
    @incident = Incident.find(params[:id])
    @region = @incident.region_id
    @incident.destroy
    redirect_to region_path(@region)
  end

  def incident_params
  params.require(:incident).permit(:title, :content)
  end

end
