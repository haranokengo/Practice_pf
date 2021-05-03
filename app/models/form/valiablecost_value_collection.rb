class Form::ValiablecostValueCollection < Form::Base
  FORM_COUNT = 10 #ここで、作成したい登録フォームの数を指定
  # valiablecost_valuesが他で使われないようにしている。
  # ここでは、initialize,valiablecost_values_attributes,saveのみ
  attr_accessor :valiablecost_values

  def initialize(attributes = {})
    # データを表示できるようにしている機能ではそこまで必要ない
    super attributes
    # selfは（自分自身のといういう意味）ここではForm::ValiablecostValuesのこと
    self.valiablecost_values = FORM_COUNT.times.map { ValiablecostValue.new() } unless self.valiablecost_values.present?
  end

  def valiablecost_values_attributes=(attributes)
    self.valiablecost_values = attributes.map { |_, v| ValiablecostValue.new(v) }
  end

  def save
    ValiablecostValue.transaction do
      self.valiablecost_values.map do |valiablecost_value|
          valiablecost_value.save
      end
    end
  end
end