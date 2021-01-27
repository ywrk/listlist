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
    context '新規登録がうまくいかないとき' do
      it "nicknameが空だと登録できない" do
        @user.nickname = ""
        @user.valid?
        expect(@user.errors.full_messages).to include("Nicknameを入力してください")
      end
      it "emailが空では登録できない" do
        @user.email = ""
        @user.valid?
        expect(@user.errors.full_messages).to include("Emailを入力してください")
      end
      it "passwordが空では登録できない" do
        @user.password = ""
        @user.valid?
        expect(@user.errors.full_messages).to include("Passwordを入力してください")
      end
      it "password_confirmationが空では登録できない" do
        @user.password_confirmation = ""
        @user.valid?
        expect(@user.errors.full_messages).to include("Password confirmationとPasswordの入力が一致しません")
      end
      it "password_confirmationがpasswordと一致しなければ登録できない" do
        @user.password_confirmation = ""
        @user.valid?
        expect(@user.errors.full_messages).to include("Password confirmationとPasswordの入力が一致しません")
      end
      it "nicknameが8文字以上だと登録できない" do
        @user.nickname = "aaaaaaaa124"
        @user.valid?
        expect(@user.errors.full_messages).to include("Nicknameは8文字以内で入力してください")
      end
      it "passwordが英数字混合でなければ登録できない" do
        @user.password = "aaaaaa"
        @user.password_confirmation = "aaaaaa"
        expect(@user.errors.full_messages).to include("半角6文字以上で英字と数字の両方を含めて設定してください")
      end
    end 

  end
end




