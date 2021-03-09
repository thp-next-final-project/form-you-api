class CategoryFormationJointuresController < ApplicationController
  before_action :set_category_formation_jointure, only: [:show, :update, :destroy]

  # GET /category_formation_jointures
  def index
    @category_formation_jointures = CategoryFormationJointure.all

    render json: @category_formation_jointures
  end

  # GET /category_formation_jointures/1
  def show
    render json: @category_formation_jointure
  end

  # POST /category_formation_jointures
  def create
    @category_formation_jointure = CategoryFormationJointure.new(category_formation_jointure_params)

    if @category_formation_jointure.save
      render json: @category_formation_jointure, status: :created, location: @category_formation_jointure
    else
      render json: @category_formation_jointure.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /category_formation_jointures/1
  def update
    if @category_formation_jointure.update(category_formation_jointure_params)
      render json: @category_formation_jointure
    else
      render json: @category_formation_jointure.errors, status: :unprocessable_entity
    end
  end

  # DELETE /category_formation_jointures/1
  def destroy
    @category_formation_jointure.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_category_formation_jointure
      @category_formation_jointure = CategoryFormationJointure.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def category_formation_jointure_params
      params.fetch(:category_formation_jointure, {})
    end
end
