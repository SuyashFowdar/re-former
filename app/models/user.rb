class User < ApplicationRecord
  validates :username, :password, :email, presence: true
  validates :username, uniqueness: { message: 'An account associated with %<value>s already exists' }
  validates :password, length: { in: 4..12 }
  validates_format_of :email, :with => /^(([A-Za-z0-9]+_+)|([A-Za-z0-9]+\-+)|([A-Za-z0-9]+\.+)|([A-Za-z0-9]+\++))*[A-Za-z0-9]+@((\w+\-+)|(\w+\.))*\w{1,63}\.[a-zA-Z]{2,6}$/i , :multiline => true
  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy
end
