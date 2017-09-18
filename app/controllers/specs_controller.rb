class SpecsController < ApplicationController
  before_action :set_spec, only: [:show, :update, :destroy]

  # GET /specs
  def index
    @specs = Spec.all

    render json: @specs
  end

  # GET /specs/1
  def show
    render json: @spec
  end

  # POST /specs
  def create
    @spec = Spec.new(spec_params)

    if @spec.save
      render json: @spec, status: :created, location: @spec
    else
      render json: @spec.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /specs/1
  def update
    if @spec.update(spec_params)
      render json: @spec
    else
      render json: @spec.errors, status: :unprocessable_entity
    end
  end

  # DELETE /specs/1
  def destroy
    @spec.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_spec
      @spec = Spec.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def spec_params
      params.require(:spec).permit(:name, :role, :class_id)
    end
end
