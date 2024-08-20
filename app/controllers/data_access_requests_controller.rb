class DataAccessRequestsController < ApplicationController
  before_action :set_data_access_request, only: %i[ show edit update destroy ]

  # GET /data_access_requests or /data_access_requests.json
  def index
    @data_access_requests = DataAccessRequest.all
  end

  # GET /data_access_requests/1 or /data_access_requests/1.json
  def show
  end

  # GET /data_access_requests/new
  def new
    @data_access_request = DataAccessRequest.new
  end

  # GET /data_access_requests/1/edit
  def edit
  end

  # POST /data_access_requests or /data_access_requests.json
  def create
    @data_access_request = DataAccessRequest.new(data_access_request_params)

    respond_to do |format|
      if @data_access_request.save
        format.html { redirect_to data_access_request_url(@data_access_request), notice: "Data access request was successfully created." }
        format.json { render :show, status: :created, location: @data_access_request }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @data_access_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /data_access_requests/1 or /data_access_requests/1.json
  def update
    respond_to do |format|
      if @data_access_request.update(data_access_request_params)
        format.html { redirect_to data_access_request_url(@data_access_request), notice: "Data access request was successfully updated." }
        format.json { render :show, status: :ok, location: @data_access_request }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @data_access_request.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /data_access_requests/1 or /data_access_requests/1.json
  def destroy
    @data_access_request.destroy!

    respond_to do |format|
      format.html { redirect_to data_access_requests_url, notice: "Data access request was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_data_access_request
      @data_access_request = DataAccessRequest.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def data_access_request_params
      params.require(:data_access_request).permit(:developer_id, :data_type, :requested_at, :status)
    end
end
