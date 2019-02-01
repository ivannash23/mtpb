class DaysController < ApplicationController

  def create
    @trip_plan = TripPlan.find(params[:trip_plan_id])
    @day = @trip_plan.days.create(params[:day].permit(:title, :description, :position))
    
    respond_to do |format|
      if @day.save
        format.html { redirect_to @trip_plan, notice: 'Day plan was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def new
    @trip_plan = TripPlan.find(params[:trip_plan_id])
  end
  

  def destroy
    @trip_plan = TripPlan.find(params[:trip_plan_id])
    @day = @trip_plan.days.find(params[:id])
    @day.destroy
      respond_to do |format|
        format.html { redirect_to trip_plan_path(@trip_plan), notice: 'Day plan was successfully destroyed.' }
      end
  end
  
  
  
  
end
