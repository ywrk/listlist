class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_many :firstlists

  with_options presence: true do
    VALID_PASSWORD_REGEX = /\A(?=.*?[a-zA-Z])(?=.*?\d)\w{6,}\z/.freeze
    validates :nickname,length: { maximum: 12 }
    validates :password, format: { with: VALID_PASSWORD_REGEX, message: '半角6文字以上で英字と数字の両方を含めて設定してください' }
  end

  def self.guest
    find_or_create_by!(email: 'guest@example.com') do |user|
      user.password = SecureRandom.urlsafe_base64
      user.nickname = "ゲストユーザー"
      # user.confirmed_at = Time.now  # Confirmable を使用する場合は必要
    end
  end

end