# frozen_string_literal: true

class User < ApplicationRecord
  has_secure_password
  has_secure_token :api_key

  validates :email, :password, presence: true
  validates :email, :api_key, uniqueness: true
  validates :password, confirmation: true
end
