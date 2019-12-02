class RingsController < ApplicationController
  before_action :set_ring, only: [:show, :update, :destroy]

  # GET /rings
  def index
    @rings = Ring.all

    render json: @rings
  end

  # GET /rings/1
  def show
    render json: @ring
  end

  # POST /rings
  def create
    @ring = Ring.new(ring_params)

    if @ring.save
      render json: @ring, status: :created, location: @ring
    else
      render json: @ring.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /rings/1
  def update
    if @ring.update(ring_params)
      render json: @ring
    else
      render json: @ring.errors, status: :unprocessable_entity
    end
  end

  # DELETE /rings/1
  def destroy
    @ring.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ring
      @ring = Ring.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def ring_params
      params.require(:ring).permit(:item, :img_url, :color, :material, :description, :value, :notes)
    end
end
