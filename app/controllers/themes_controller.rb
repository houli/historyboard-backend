class ThemesController < ApplicationController
  before_action :authenticate_user!, only: [:create, :update, :destroy]
  before_action :set_theme, only: [:show, :update, :destroy]
  load_and_authorize_resource

  # GET /themes
  # GET /themes.json
  def index
    @themes = Theme.all

    render json: @themes
  end

  # GET /themes/1
  # GET /themes/1.json
  def show
  end

  # POST /themes
  # POST /themes.json
  def create
    @theme = Theme.new(theme_params)

    if @theme.save
      render json: @theme, status: :created, location: @theme
    else
      render json: @theme.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /themes/1
  # PATCH/PUT /themes/1.json
  def update
    @theme = Theme.find(params[:id])

    if @theme.update(theme_params)
      head :no_content
    else
      render json: @theme.errors, status: :unprocessable_entity
    end
  end

  # DELETE /themes/1
  # DELETE /themes/1.json
  def destroy
    @theme.destroy

    head :no_content
  end

  private

    def set_theme
      @theme = Theme.find(params[:id])
    end

    def theme_params
      params.require(:theme).permit(:title, :description, :image)
    end
end
