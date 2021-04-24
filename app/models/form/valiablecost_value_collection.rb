class Form::ValiablecostValuesCollection < Form::Base
  FORM_COUNT = 10 #ここで、作成したい登録フォームの数を指定
  attr_accessor :valiablecost_values

  def initialize(attributes = {})
    super attributes
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