class StockLocalsController < ApplicationController
  before_action :set_stock_local, only: [:show, :update, :destroy]

  # GET /stock_locals
  def index
    @stock_locals = StockLocal.all

    render json: @stock_locals
  end

  # GET /stock_locals/1
  def show
    render json: @stock_local
  end

  # POST /stock_locals
  def create
    @stock_local = StockLocal.new(stock_local_params)

    if @stock_local.save
      render json: @stock_local, status: :created, location: @stock_local
    else
      render json: @stock_local.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /stock_locals/1
  def update
    if @stock_local.update(stock_local_params)
      render json: @stock_local
    else
      render json: @stock_local.errors, status: :unprocessable_entity
    end
  end

  # DELETE /stock_locals/1
  def destroy
    @stock_local.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stock_local
      @stock_local = StockLocal.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def stock_local_params
      params.require(:stock_local).permit(:sec_code, :sec_name, :exchange_code, :asset_class_coce, :main_sector, :sub_sector, :contact, :description, :tier_code, :par_value, :list_date, :outstanding_shares, :grp_code, :registrar, :address_1, :address_2, :address_3, :state_code, :website, :email, :gsm, :land_tel, :fax_no, :regis_close, :year_end, :logo, :shares_in_issue, :capitalization, :view_count)
    end
end
