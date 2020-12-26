class Firstlist < ApplicationRecord
  belongs_to :user

  with_options presence: true do
    validates :title
    validates :text1
  end
  
  # validates :text2
  # validates :text3
  # validates :text4
  # validates :text5
  # validates :text6

  # def self.auto_select
  # end

end
