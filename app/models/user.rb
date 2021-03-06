class User < ApplicationRecord
    
    validates :username, :email, :password_digest, :session_token, presence: true
    validates :email, :session_token, uniqueness: true
    validates :password, length: {minimum: 6, allow_nil: true}
    attr_reader :password
    after_initialize :ensure_session_token


    has_many :reviews,
    foreign_key: :reviewer_id,
    class_name: :Review

    has_many :reservations, 
    foreign_key: :reservation_id,
    class_name: :Reservation

     has_many :reserved_restaurants,
     through: :reservations,
     source: :restaurant

    def self.find_by_credentials(email, password)
        user = User.find_by(email: email)
        if user && user.is_password?(password)
            user
        else 
            nil
        end 
    end 

    def is_password?(password)
        BCrypt::Password.new(self.password_digest).is_password?(password)
    end 

    def password=(password)
        @password = password
        self.password_digest = BCrypt::Password.create(password)
    end 

    def ensure_session_token
        self.session_token ||= SecureRandom::base64
    end 

    def reset_session_token!
        self.session_token = SecureRandom::base64
        self.save!
        self.session_token
    end 
end

