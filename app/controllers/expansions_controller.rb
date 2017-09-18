class ExpansionsController < ApplicationController
  before_action :set_expansion, only: [:show, :update, :destroy]

  # GET /expansions
  def index
    @expansions = Expansion.all

    render json: @expansions
  end

  # GET /expansions/1
  def show
    render json: @expansion
  end

  # POST /expansions
  def create
    @expansion = Expansion.new(expansion_params)

    if @expansion.save
      render json: @expansion, status: :created, location: @expansion
    else
      render json: @expansion.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /expansions/1
  def update
    if @expansion.update(expansion_params)
      render json: @expansion
    else
      render json: @expansion.errors, status: :unprocessable_entity
    end
  end

  # DELETE /expansions/1
  def destroy
    @expansion.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_expansion
      @expansion = Expansion.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def expansion_params
      params.require(:expansion).permit(:name, :colors, :release_order)
    end
end
