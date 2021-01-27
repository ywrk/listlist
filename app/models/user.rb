class User < ApplicationRecord
  devise :database_authenticatable, :registerable, :timeoutable,
         :recoverable, :rememberable, :validatable
  
  has_many :firstlists

  with_options presence: true do
    VALID_PASSWORD_REGEX = /\A(?=.*?[a-zA-Z])(?=.*?\d)\w{6,}\z/.freeze
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

    validates :nickname,length: { maximum: 8 }
    validates :email, uniqueness: true, format: { with: VALID_EMAIL_REGEX }
    
    with_options on: :create do
    validates :password, format: { with: VALID_PASSWORD_REGEX, message: '半角6文字以上で英字と数字の両方を含めて設定してください' }
    end
  end

  def self.guest
    find_or_create_by!(email: 'guest@example.com') do |user|
      user.password = SecureRandom.urlsafe_base64
      user.nickname = "ゲストユーザー"
      # user.confirmed_at = Time.now  # Confirmable を使用する場合は必要
    end
  end

end