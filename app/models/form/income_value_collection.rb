class Form::IncomeValueCollection < Form::Base
  FORM_COUNT = 10 #ここで、作成したい登録フォームの数を指定
  attr_accessor :income_values

  def initialize(attributes = {})
    super attributes
    self.income_values = FORM_COUNT.times.map { IncomeValue.new() } unless self.income_values.present?
  end

  def income_values_attributes=(attributes)
    self.income_values = attributes.map { |_, v| IncomeValue.new(v) }
  end

  def save
    IncomeValue.transaction do
      self.income_values.map do |income_value|
          income_value.save
      end
    end
  end
end