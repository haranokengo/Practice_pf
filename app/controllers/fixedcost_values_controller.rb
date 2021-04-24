class FixedcostValuesController < ApplicationController
  def index
		@fixedcosts = Fixedcost.order(created_at: :asc)
		@fixedcost_values = FixedcostValue.order("year_month asc")
	end

	def show
		@fixedcost_value = FixedcostValue.find(params[:id])
	end

	def new
		@form = Form::FixedcostValueCollection.new
		@fixedcosts = Fixedcost.all
	end

	def edit
		@fixedcost_value = FixedcostValue.find(params[:id])
		@fixedcost = Fixedcost.find(@fixedcost_value.fixedcost_id)
	end

	def create
		@form = Form::FixedcostValueCollection.new(fixedcost_value_collection_params)
    if @form.save
      redirect_to root_path, notice: "商品を登録しました"
    else
      flash.now[:alert] = "商品登録に失敗しました"
      render :new
    end
	end
  private
  def fixedcost_value_collection_params
      params.require(:form_fixedcost_value_collection)
      .permit(fixedcost_values_attributes: [:name, :value, :year_month, :description, :fixedcost_id])
  end
end
