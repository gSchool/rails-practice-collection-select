class EmploymentsController < ApplicationController
  helper_method :toggle_blank

  def toggle_blank
    if @toggle_blank
      {include_blank: true}
    else
      {include_blank: false}
    end
  end

  def index
    @employments = Employment.all

  end

  def new
    @toggle_blank = true
    @employment = Employment.new
    @persons = Person.all
    @organizations = Organization.all
    @jobs = JobTitle.all
    @locations = Location.all
  end

  def create
    @employment = Employment.new(employment_params)
    if @employment.save
      @toggle_blank = false
      redirect_to Employment
    else
      render :new
    end
  end

  def edit
    @toggle_blank = false
    @employment = Employment.find(params[:id])
    @persons = Person.all
    @organizations = Organization.all
    @jobs = JobTitle.all
    @locations = Location.all
  end

  def update
    @employment = Employment.find(params[:id])
    if @employment.update(employment_params)
      redirect_to Employment
    else
      render :edit
    end
  end

  private

  def employment_params
    params.require(:employment).permit(
      :person_id,
      :organization_id,
      :job_title_id,
      :location_id
    )
  end

end
