class Form::FixedcostForm < Form::Base
	USER_NUM = 5  # 同時にユーザーを作成する数
  attr_accessor :collection  # ここに作成したユーザーモデルが格納される

  # 初期化メソッド
  def initialize(attributes = [])
    if attributes.present?
      self.collection = attributes.map do |value|
        User.new(
          name: value['name'],
          address: value['address'],
          age: value['age']
        )
      end
    else
      self.collection = USER_NUM.times.map{ User.new }
    end
  end

  # レコードが存在するか確認するメソッド
  def persisted?
    false
  end
end
end