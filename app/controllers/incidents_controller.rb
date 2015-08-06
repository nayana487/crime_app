class IncidentsController < ApplicationController
  def new
    @region = Region.find(params[:region_id])
    @incident = Incident.new
  end

  def create
    @region = Region.find(params[:region_id])
    @region.incidents.create(incident_params) 
    #@incident = Incident.create!(incident_params.merge(region: @region))
    redirect_to region_path(@region)
  end

  def show
    @incident = Incident.find(params[:id])
  end

  def edit
    @region = Region.find(params[:region_id])
    @incident = Incident.find(params[:id])
  end

  def update
    @region = Region.find(params[:region_id])
    @incident = Incident.find(params[:id])
    @incident.update(incident_params)
    redirect_to region_incident_path(@region, @incident)
  end

  def destroy
    @incident = Incident.find(params[:id])
    @region = @incident.region_id
    @incident.destroy
    redirect_to region_path(@region)
  end

  def incident_params
  params.require(:incident).permit(:title, :name, :content)
  end

end
