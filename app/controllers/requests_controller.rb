class RequestsController < ApplicationController
  before_action :set_request, only: [:accept, :reject, :update, :destroy]

  # GET /requests
  def index
    @requests = Request.all

    render json: @requests.to_json(include: [{character: {include: :klasse}}, :spec])
  end

  # GET /requests/1
  def show
    @requests = Request.where(group_id:params[:id])
    render json: @requests.to_json(include: [{character: {include: :klasse}}, :spec])
  end


  def accept
    ledger_params = {group_id: @request.group_id, character_id: @request.character_id, spec_id: @request.spec_id}
    @ledger = Ledger.new(ledger_params)
    @request.update({status: "accepted"})

    if @ledger.save
      render json: @ledger, status: :created, location: @ledger, request: @request
    else
      render json: @ledger.errors, status: :unprocessable_entity
    end

  end

  def reject
    @request.update({status: "rejected"})
    render json: @request


  end

  # POST /requests
  def create
    @request = Request.new(request_params)

    if @request.save
      render json: @request, status: :created, location: @request
    else
      render json: @request.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /requests/1
  def update
    if @request.update(request_params)
      render json: @request
    else
      render json: @request.errors, status: :unprocessable_entity
    end
  end

  # DELETE /requests/1
  def destroy
    @request.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_request
      @request = Request.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def request_params
      params.require(:request).permit(:group_id, :character_id, :spec_id, :role, :note)
    end
end
