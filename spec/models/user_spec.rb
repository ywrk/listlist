require 'rails_helper'
RSpec.describe User, type: :model do

#  before do
#    @user = FactoryBot.build(:user)
#  end

  describe "ユーザー新規登録" do
    it "nicknameが空だと登録できない" do
      user = User.new(nickname: "", email: "kkk@gmail.com", password: "00000000", password_confirmation: "00000000")
      user.valid?
    end
    it "emailが空では登録できない" do
      user = User.new(nickname: "@user.nickname", email: "", password: "00000000", password_confirmation: "00000000")
      user.valid?
    end

    
  end
end
