class User < ApplicationRecord
  validates :email, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
  validates :profile_text, length: { maximum: 150 }
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable,
         :omniauthable, omniauth_providers: [:twitter, :facebook]

  # メール認証前にパスワードスキップ
  def password_required?
    super if confirmed?
  end

  def self.find_for_oauth(auth)
    user = User.where(uid: auth.uid, provider: auth.provider).first
    unless user
      user = User.new(
          uid:      auth.uid,
          provider: auth.provider,
          email:    auth.info.email || User.dummy_email(auth),
          password: Devise.friendly_token[0, 20],
          profile_image: auth.info.image,
          location: auth.info.loction
          )
      user.skip_confirmation!
      user.save
    end
    user
  end

  private

  def self.dummy_email(auth)
    "#{auth.uid}-#{auth.provider}@example.com"
  end
end
