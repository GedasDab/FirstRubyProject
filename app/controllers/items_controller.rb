# frozen_string_literal: true

class ItemsController < ApplicationController
  before_action :set_item, only: %i[show update destroy]

  rescue_from ::ActiveRecord::RecordNotFound, with: :record_not_found

  def index
    render json: Item.all
  end

  def show
    render json: @item
  end

  def create
    render json: Item.create(item_params), status: :created
  end

  def update
    if @item.update(item_params)
      render json: @item
    else
      render json: { error_message: 'Update failed' }, status: :bad_request
    end
  end

  def destroy
    @item.destroy

    head :no_content
  end

  private

  def record_not_found(exception)
    render json: {error: exception.message}.to_json, status: 404
  end

  def set_item
    @item = Item.find(params[:id])
  end

  def item_params
    params.require(:item).permit(:price, :size, :brand, :photo_url, :status, :user_id)
  end
end