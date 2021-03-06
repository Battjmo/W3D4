# == Schema Information
#
# Table name: questions
#
#  id      :bigint(8)        not null, primary key
#  body    :text             not null
#  poll_id :integer          not null
#

class Question < ApplicationRecord
  valid :body, presence: true 
  belongs_to :poll, 
    primary_key: :id,
    foreign_key: :poll_id,
    class_name: :Poll 
    
  has_many :answer_choices,
    primary_key: :id,
    foreign_key: :question_id,
    class_name: :Answer_Choice
    
    has_many :responses, through: :answer_choices, source: :responses
end 
