class ValiablecostsController < ApplicationController
  def index
    @valiablecosts = Valiablecost.all
  end

  def show
    @valiablecost = Valiablecost.find(params[:id])
  end

  def new
    @valiablecost = Valiablecost.new
  end

  def edit
    @valiablecost = Valiablecost.find(params[:id])
  end

  def create
    @valiablecost = Valiablecost.new(valiablecost_params)
    if @valiablecost.save
      redirect_to @valiablecost, notice: "変動費科目を登録しました。"
    else
      render "new"
    end
  end

  def update
    @valiablecost = Valiablecost.find(params[:id])
    if @valiablecost.update(valiablecost_params)
      redirect_to @valiablecost, notice: "変動費科目を変更しました"
    else
      render "new"
    end
  end

  def destroy
    @valiablecost = Valiablecost.find(params[:id])
    @valiablecost.destroy
    redirect_to valiablecosts_path, notice: "変動費科目を削除しました。"
  end

  private

  def valiablecost_params
    params.require(:valiablecost).permit(:name, :description)
  end
end
