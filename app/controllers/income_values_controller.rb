class IncomeValuesController < ApplicationController

	def index
	  @incomes = Income.all
	  @income_values = IncomeValueCollection.all
	end

	def show
	  @income_value = IncomeValue.find(params[:id])
	end

	def new
		@form = Form::IncomeValueCollection.new
	  @income = Income.all
	end

	def edit
		@income_value = IncomeValue.find(params[:id])
		@income = Income.find(@income_value.income_id)
	end

	def create
		@form = Form::IncomeValueCollection.new(income_value_collection_params)
    if @form.save
      redirect_to root_path, notice: "商品を登録しました"
    else
      flash.now[:alert] = "商品登録に失敗しました"
      render :new
    end
	end
  private
    def income_value_collection_params
        params.require(:form_income_value_collection)
        .permit(income_values_attributes: [:name, :value, :year_month, :description, :income_id])
    end

end
