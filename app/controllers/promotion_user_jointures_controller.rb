class PromotionUserJointuresController < ApplicationController
  before_action :set_promotion_user_jointure, only: [:show, :update, :destroy]

  # GET /promotion_user_jointures
  def index
    @promotion_user_jointures = PromotionUserJointure.all

    render json: @promotion_user_jointures
  end

  # GET /promotion_user_jointures/1
  def show
    render json: @promotion_user_jointure
  end

  # POST /promotion_user_jointures
  def create
    @promotion_user_jointure = PromotionUserJointure.new(promotion_user_jointure_params)

    if @promotion_user_jointure.save
      render json: @promotion_user_jointure, status: :created, location: @promotion_user_jointure
    else
      render json: @promotion_user_jointure.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /promotion_user_jointures/1
  def update
    if @promotion_user_jointure.update(promotion_user_jointure_params)
      render json: @promotion_user_jointure
    else
      render json: @promotion_user_jointure.errors, status: :unprocessable_entity
    end
  end

  # DELETE /promotion_user_jointures/1
  def destroy
    @promotion_user_jointure.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_promotion_user_jointure
      @promotion_user_jointure = PromotionUserJointure.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def promotion_user_jointure_params
      params.fetch(:promotion_user_jointure, {})
    end
end
