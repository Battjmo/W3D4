# == Schema Information
#
# Table name: responses
#
#  id               :bigint(8)        not null, primary key
#  user_id          :integer          not null
#  answer_choice_id :integer          not null
#

class Response < ApplicationRecord
  
  belongs_to :users,
    primary_key: :id,
    foreign_key: :user_id,
    class_name: :User 
    
  belongs_to :answer_choices,
    primary_key: :id,
    foreign_key: :answer_choice_id,
    class_name: :Answer_Choice
    
  has_one :question, through: :answer_choices, source: :questions

  def sibling_responses
    question = send(:question) 
    responses = question.send(:responses).where.not(self.id == response.id)
  end 
    
end 
