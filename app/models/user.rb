# == Schema Information
#
# Table name: users
#
#  id              :bigint           not null, primary key
#  username        :string           not null
#  session_token   :string           not null
#  password_digest :string           not null
#  email           :string           not null
#  mailing_address :string
#  phone_number    :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
class User < ApplicationRecord
    attr_reader :password

 
  
    validates :username, presence:true, uniqueness: true
    validates :password, length: {minimum: 6}, allow_nil: true
    validates :email, presence:true, uniqueness:true 

    after_initialize :ensure_session_token
 

    has_one :store, foreign_key: :owner_id, class_name: :Store
    has_one :cart, foreign_key: :user_id, class_name: :Cart 
    has_many :comments, foreign_key: :user_id, class_name: :Comment
    has_many :ratings, foreign_key: :user_id, class_name: :Rating
    has_many :order_product, 
    through: :orderlist,
    source: :products
   

   

  def self.find_by_credentials(username, password)
  
    user = User.find_by(username: username) 
    return nil unless user
    user.is_password?(password) ? user : nil
  end

  def password=(password)
    @password = password
    self.password_digest = BCrypt::Password.create(password)
  end

  def is_password?(password)
    BCrypt::Password.new(self.password_digest).is_password?(password)
  end

  def reset_session_token!
    generate_unique_session_token
    save!
    self.session_token
  end

  private

  def ensure_session_token
    generate_unique_session_token unless self.session_token
  end

  def new_session_token
    SecureRandom.urlsafe_base64
  end

  def generate_unique_session_token
    self.session_token = new_session_token
    while User.find_by(session_token: self.session_token)
      self.session_token = new_session_token
    end
    self.session_token
  end

end

