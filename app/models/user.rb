class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_many :firstlists

  with_options presence: true do
    VALID_PASSWORD_REGEX = /\A(?=.*?[a-zA-Z])(?=.*?\d)\w{6,}\z/.freeze
    validates :nickname,length: { maximum: 6 }
    validates :password, format: { with: VALID_PASSWORD_REGEX, message: '半角6文字以上で英字と数字の両方を含めて設定してください' }
  end

end