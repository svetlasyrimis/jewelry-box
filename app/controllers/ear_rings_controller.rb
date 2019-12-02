class EarRingsController < ApplicationController
  before_action :set_ear_ring, only: [:show, :update, :destroy]

  # GET /ear_rings
  def index
    @ear_rings = EarRing.all

    render json: @ear_rings
  end

  # GET /ear_rings/1
  def show
    render json: @ear_ring
  end

  # POST /ear_rings
  def create
    @ear_ring = EarRing.new(ear_ring_params)

    if @ear_ring.save
      render json: @ear_ring, status: :created, location: @ear_ring
    else
      render json: @ear_ring.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /ear_rings/1
  def update
    if @ear_ring.update(ear_ring_params)
      render json: @ear_ring
    else
      render json: @ear_ring.errors, status: :unprocessable_entity
    end
  end

  # DELETE /ear_rings/1
  def destroy
    @ear_ring.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ear_ring
      @ear_ring = EarRing.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def ear_ring_params
      params.require(:ear_ring).permit(:item, :img_url, :color, :material, :description, :value, :notes)
    end
end
