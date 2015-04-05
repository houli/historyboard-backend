class SubthemesController < ApplicationController
  before_action :authenticate_user!, only: [:create, :update, :destroy]
  before_action :set_subtheme, only: [:show, :update, :destroy]
  load_and_authorize_resource

  # GET /subthemes
  # GET /subthemes.json
  def index
    @subthemes = Subtheme.all

    render json: @subthemes
  end

  # GET /subthemes/1
  # GET /subthemes/1.json
  def show
  end

  # POST /subthemes
  # POST /subthemes.json
  def create
    @subtheme = Subtheme.new(subtheme_params)

    if @subtheme.save
      render json: @subtheme, status: :created, location: @subtheme
    else
      render json: @subtheme.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /subthemes/1
  # PATCH/PUT /subthemes/1.json
  def update
    @subtheme = Subtheme.find(params[:id])

    if @subtheme.update(subtheme_params)
      head :no_content
    else
      render json: @subtheme.errors, status: :unprocessable_entity
    end
  end

  # DELETE /subthemes/1
  # DELETE /subthemes/1.json
  def destroy
    @subtheme.destroy

    head :no_content
  end

  private

    def set_subtheme
      @subtheme = Subtheme.find(params[:id])
    end

    def subtheme_params
      params.require(:subtheme).permit(:title, :theme_id)
    end
end
