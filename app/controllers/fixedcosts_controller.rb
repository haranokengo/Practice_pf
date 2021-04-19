class FixedcostsController < ApplicationController
  def index
    @fixedcosts = Fixedcost.all
  end

  def show
    @fixedcost = Fixedcost.find(params[:id])
  end

  def new
    @fixedcost = Fixedcost.new
  end

  def edit
    @fixedcost = Fixedcost.find(params[:id])
  end

  def create
    @fixedcost = Fixedcost.new(fixedcost_params)
    if @fixedcost.save
      redirect_to @fixedcost, notice: "固定費科目を登録しました。"
    else
      render "new"
    end
  end

  def update
    @fixedcost = Fixedcost.find(params[:id])
    if @fixedcost.update(fixedcost_params)
      redirect_to @fixedcost, notice: "固定費科目を変更しました。"
    else
      render "new"
    end
  end

  def destroy
    @fixedcost = Fixedcost.find(params[:id])
    @fixedcost.destroy
    redirect_to fixedcosts_path, notice: "固定費科目を削除しました。"
  end

  private
   def fixedcost_params
    params.require(:fixedcost).permit(:name, :description)
   end
end
