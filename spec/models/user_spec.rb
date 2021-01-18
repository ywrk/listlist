require 'rails_helper'
RSpec.describe User, type: :model do

 before do
   @user = FactoryBot.build(:user)
 end

 describe "ユーザー新規登録" do
  context '新規登録がうまくいくとき' do
    it "nicknameとemail、passwordとpassword_confirmationが存在すれば登録できる" do
      expect(@user).to be_valid
    end
    it "nicknameが8文字以下であれば登録できる" do
      @user.nickname = "aaaaaaaa"
      expect(@user).to be_valid 
    end
    it "passwordが6文字以上の英数字混合であれば登録できる" do
      @user.password = "aaa000"
      @user.password_confirmation = "aaa000"
      expect(@user).to be_valid 
    end
  end
end

end


    # it "nicknameが空だと登録できない" do
    #   user = User.new(nickname: "", email: "testtest@gmail.com", password: "00000000", password_confirmation: "00000000")
    #   user.valid?
    # end
    # it "emailが空では登録できない" do
    #   user = User.new(nickname: "@user.nickname", email: "", password: "00000000", password_confirmation: "00000000")
    #   user.valid?
    # end

