class Board < ActiveRecord::Base
  has_many :jobs
  has_many :services
  has_many :fees
  has_many :users
