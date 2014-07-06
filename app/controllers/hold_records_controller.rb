class HoldRecordsController < ApplicationController

  def index
    @hold_records = HoldRecord.all
  end

  def new
    @hold_record = HoldRecord.new
    @checker = Checker.find(params[:checker])
  end

  def create
    hold_record = HoldRecord.create(hold_record_params)
    redirect_to hold_record_path(hold_record)
  end

  def show
    @hold_record = HoldRecord.find(params[:id])
    @checker = @hold_record.checker
  end

  def update
    hold_record = HoldRecord.find(params[:id])
    hold_record.update(hold_record_params)
    redirect_to checker_path(hold_record.checker_id)
  end

  def destroy
    hold_record = HoldRecord.find(params[:id])
    # Should this record be deleted?
    redirect_to hold_records_path
  end

  private

  def hold_record_params
    params.require(:hold_record).permit(:user_id, :checker_id, :status, :dropoff_time, :dropoff_day, :pickup_time, :pickup_day, :hold_complete)
  end

end
