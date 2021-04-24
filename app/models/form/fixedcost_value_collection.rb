class Form::FixedcostValueCollection < Form::Base
  FORM_COUNT = 10 #ここで、作成したい登録フォームの数を指定
  attr_accessor :fixedcost_values

  def initialize(attributes = {})
    super attributes
    self.fixedcost_values = FORM_COUNT.times.map { FixedcostValue.new() } unless self.fixedcost_values.present?
  end

  def fixedcost_values_attributes=(attributes)
    self.fixedcost_values = attributes.map { |_, v| FixedcostValue.new(v) }
  end

  def save
    FixedcostValue.transaction do
      self.fixedcost_values.map do |fixedcost_value|
          fixedcost_value.save
      end
    end
  end
end