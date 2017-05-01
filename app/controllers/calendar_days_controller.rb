class CalendarDaysController < ApplicationController
  before_action :set_calendar_day, only: [:show, :edit, :update, :destroy]

  # GET /calendar_days
  # GET /calendar_days.json
  def index
    @calendar_days = CalendarDay.all
  end

  # GET /calendar_days/1
  # GET /calendar_days/1.json
  def show
  end

  # GET /calendar_days/new
  def new
    @calendar_day = CalendarDay.new
  end

  # GET /calendar_days/1/edit
  def edit
  end

  # POST /calendar_days
  # POST /calendar_days.json
  def create
    @calendar_day = CalendarDay.new(calendar_day_params)

    respond_to do |format|
      if @calendar_day.save
        format.html { redirect_to @calendar_day, notice: 'Calendar day was successfully created.' }
        format.json { render :show, status: :created, location: @calendar_day }
      else
        format.html { render :new }
        format.json { render json: @calendar_day.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /calendar_days/1
  # PATCH/PUT /calendar_days/1.json
  def update
    respond_to do |format|
      if @calendar_day.update(calendar_day_params)
        format.html { redirect_to @calendar_day, notice: 'Calendar day was successfully updated.' }
        format.json { render :show, status: :ok, location: @calendar_day }
      else
        format.html { render :edit }
        format.json { render json: @calendar_day.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /calendar_days/1
  # DELETE /calendar_days/1.json
  def destroy
    @calendar_day.destroy
    respond_to do |format|
      format.html { redirect_to calendar_days_url, notice: 'Calendar day was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_calendar_day
      @calendar_day = CalendarDay.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def calendar_day_params
      params.require(:calendar_day).permit(:date, :notes)
    end
end
