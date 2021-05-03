class ValiablecostValuesController < ApplicationController
  def index
  	@variablecosts = Valiablecost.all
		@variablecost_values = ValiablecostValue.order("year_month asc")
  end

	def show
		@variablecost_value = ValiablecostValue.find(params[:id])
	end

	def new
		@form = Form::ValiablecostValueCollection.new
		@valiablecosts = Valiablecost.all
	end

	def edit
		@variablecost_value = ValiablecostValue.find(params[:id])
		@variablecost = Valiablecost.find(@variablecost_value.variablecost_id)
	end

	def create
		@form = Form::ValiablecostValueCollection.new(valiablecost_value_collection_params)
    if @form.save
      redirect_to root_path, notice: "商品を登録しました"
    else
      flash.now[:alert] = "商品登録に失敗しました"
      render :new
    end
	end
  private
    def valiablecost_value_collection_params
        params.require(:form_valiablecost_value_collection)
        .permit(valiablecost_values_attributes: [:name, :value, :year_month, :description, :valiablecost_id])
    end

end
