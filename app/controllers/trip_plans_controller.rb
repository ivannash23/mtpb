class TripPlansController < ApplicationController
  before_action :set_trip_plan, only: [:show, :edit, :update, :destroy]

  def index
    @trip_plans = TripPlan.all
  end

  def show
  end

  def new
    @trip_plan = TripPlan.new
  end

  def edit
  end

  def create
    @trip_plan = TripPlan.new(trip_plan_params)

    respond_to do |format|
      if @trip_plan.save
        format.html { redirect_to @trip_plan, notice: 'Trip plan was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @trip_plan.update(trip_plan_params)
        format.html { redirect_to @trip_plan, notice: 'Trip plan was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @trip_plan.destroy
    respond_to do |format|
      format.html { redirect_to trip_plans_url, notice: 'Trip plan was successfully destroyed.' }
    end
  end

  private
    def set_trip_plan
      @trip_plan = TripPlan.find(params[:id])
    end

    def trip_plan_params
      params.require(:trip_plan).permit(:title, :summary)
    end
end
