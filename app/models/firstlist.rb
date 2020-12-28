class Firstlist < ApplicationRecord
  belongs_to :user

  with_options presence: true do
    validates :title, presence: { message: 'タイトルを入力してください'}
    validates :text1, presence: { message: 'リスト１を入力してください'}
  end
  
  # validates :text2
  # validates :text3
  # validates :text4
  # validates :text5
  # validates :text6

  # def self.auto_select
  # end

end
