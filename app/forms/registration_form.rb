# class RegistrationForm
#   include ActiveModel::Model

#   attr_accessor :nickname, :email, :admin,
#                 :last_name, :first_name, :last_name_kana, :first_name_kana, 
#                 :postal_code, :prefecture_id, :city, :block, :building, :phone_number, :user_id

#   with_options presence: true do
#     validates :nickname
#     validates :last_name, :first_name,
#               format: { with: /\A[ぁ-んァ-ン一-龥]/, message: 'は全角で入力してください' }
#     validates :last_name_kana, :first_name_kana,
#               format: { with: /\A[ァ-ヶー－]+\z/, message: 'は全角カタカナで入力してください' }
#     validates :postal_code, format: { with: /\A\d{3}[-]\d{4}\z/, message: 'にはハイフンが必要です' }
#     validates :prefecture_id, numericality: { other_than: 0 }
#     validates :city
#     validates :block
#     validates :phone_number, format: { with: /\A\d{10,11}\z/, message: 'が正しくありません' }
#   end
#   validates :email, uniqueness: true,
#                     format: { with: /\A\S+@\S+\.\S+\z/, message: 'は@を含む必要があります' }
#   PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?[\d])\w{6,}\z/.freeze
#   validates :password,
#             format: { with: PASSWORD_REGEX, message: 'には英字と数字の両方を含めて設定してください' }
# end