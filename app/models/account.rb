class Account < ActiveRecord::Base
  attr_accessible :about, :e_mail, :full_name, :name, :status
  validates :e_mail, :presence => true, :uniqueness => true,:format=>{:with=>/^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i, :message => "Please Enter a valid email address eg. abc@gmail.com"}
  validates :about,:full_name,:name,:presence => true


  attr_accessor :password_confirmation # Note. You do not need this field in database, it's for 1-time use

  # The following 2 lines let you prevent certain fields
  # attr_accessible :password, :password_confirmation
  attr_protected :password
  # password that if you used attr_accessible, and all other fields cannot be assigned through User.new(params[:user[), while if you used attr_protected, only those fields cannot assigned.

 validates_confirmation_of :password # This automatically validates if :password == :password_confirmation
end
