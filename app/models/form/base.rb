class Form::Base
  # Formモデルでメソッドを使えるようにしている
  include ActiveModel::Model
  include ActiveModel::Callbacks
  include ActiveModel::Validations
  include ActiveModel::Validations::Callbacks
end