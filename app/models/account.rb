class Account < ActiveRecord::Base
  attr_accessible :about, :e_mail, :full_name, :name, :password, :status
  validates :e_mail, :presence => true, :uniqueness => true,:format=>{:with=>/^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i, :message => "Please Enter a valid email address eg. abc@gmail.com"}
  validates :about,:full_name,:name,:presence => true
end
