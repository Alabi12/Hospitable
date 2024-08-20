class ApiLogsController < ApplicationController
  before_action :set_api_log, only: %i[ show edit update destroy ]

  # GET /api_logs or /api_logs.json
  def index
    @api_logs = ApiLog.all
  end

  # GET /api_logs/1 or /api_logs/1.json
  def show
  end

  # GET /api_logs/new
  def new
    @api_log = ApiLog.new
  end

  # GET /api_logs/1/edit
  def edit
  end

  # POST /api_logs or /api_logs.json
  def create
    @api_log = ApiLog.new(api_log_params)

    respond_to do |format|
      if @api_log.save
        format.html { redirect_to api_log_url(@api_log), notice: "Api log was successfully created." }
        format.json { render :show, status: :created, location: @api_log }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @api_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /api_logs/1 or /api_logs/1.json
  def update
    respond_to do |format|
      if @api_log.update(api_log_params)
        format.html { redirect_to api_log_url(@api_log), notice: "Api log was successfully updated." }
        format.json { render :show, status: :ok, location: @api_log }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @api_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /api_logs/1 or /api_logs/1.json
  def destroy
    @api_log.destroy!

    respond_to do |format|
      format.html { redirect_to api_logs_url, notice: "Api log was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_api_log
      @api_log = ApiLog.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def api_log_params
      params.require(:api_log).permit(:api_key_id, :request_details, :response_time, :timestamp)
    end
end
