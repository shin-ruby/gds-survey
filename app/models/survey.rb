class Survey < ActiveRecord::Base
  attr_accessible :company, :department, :email, :name, :phone, :q1, :q10, :q2, :q3, :q4, :q5, :q6, :q7, :q8, :q9
end
