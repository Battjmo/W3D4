# == Schema Information
#
# Table name: answer_choices
#
#  id          :bigint(8)        not null, primary key
#  body        :text             not null
#  question_id :integer          not null
#

class Answer_Choice < ApplicationRecord
  valid :body, presence: true 
  
  belongs_to :questions,
    primary_key: :id,
    foreign_key: :question_id,
    class_name: :Question
    
  has_many :responses,
  primary_key: :id,
  foreign_key: :answer_choice_id,
  class_name: :Response
end 
