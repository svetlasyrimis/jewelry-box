class BraceletsController < ApplicationController
  before_action :set_bracelet, only: [:show, :update, :destroy]
  before_action :authorize_request, except: %i[index show]

  # GET /bracelets
  def index
    @bracelets = Bracelet.all

    render json: @bracelets
  end

  # GET /bracelets/1
  def show
    render json: @bracelet
  end

  # POST /bracelets
  def create
    @bracelet = Bracelet.new(bracelet_params)

    if @bracelet.save
      render json: @bracelet, status: :created, location: @bracelet
    else
      render json: @bracelet.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /bracelets/1
  def update
    if @bracelet.update(bracelet_params)
      render json: @bracelet
    else
      render json: @bracelet.errors, status: :unprocessable_entity
    end
  end

  # DELETE /bracelets/1
  def destroy
    @bracelet.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bracelet
      @bracelet = Bracelet.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def bracelet_params
      params.require(:bracelet).permit(:item, :img_url, :color, :material, :description, :value, :notes)
    end
end
