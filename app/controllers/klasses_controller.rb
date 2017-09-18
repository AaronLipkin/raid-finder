class KlassesController < ApplicationController
  before_action :set_klass, only: [:show, :update, :destroy]

  # GET /klasses
  def index
    @klasses = Klasse.all

    render json: @klasses
  end

  # GET /klasses/1
  def show
    render json: @klass
  end

  # POST /klasses
  def create
    @klass = Klasse.new(klass_params)

    if @klass.save
      render json: @klass, status: :created, location: @klass
    else
      render json: @klass.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /klasses/1
  def update
    if @klass.update(klass_params)
      render json: @klass
    else
      render json: @klass.errors, status: :unprocessable_entity
    end
  end

  # DELETE /klasses/1
  def destroy
    @klass.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_klass
      @klass = Klasse.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def klass_params
      params.require(:klass).permit(:name)
    end
end
