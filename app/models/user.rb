class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :judged_lawsuits, :class_name => 'Lawsuit', :foreign_key => 'judge_id'
  has_many :corrected_lawsuits, :class_name => 'Lawsuit', :foreign_key => 'corrector_id'
  has_many :defendant_lawsuits, :class_name => 'Lawsuit', :foreign_key => 'defendant_id'
  has_many :complainant_lawsuits, :class_name => 'Lawsuit', :foreign_key => 'complainant_id'

  # Enums
  enum type: [ :judge, :complainant, :defendant, :corrector]

end
