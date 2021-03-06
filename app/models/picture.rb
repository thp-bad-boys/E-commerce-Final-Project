# frozen_string_literal: true

class Picture < ApplicationRecord
  has_one_attached :chat_pic
  has_many :line_items, dependent: :nullify
  belongs_to :administrator, class_name: 'User'

  validates :name, presence: true
  validates :name, presence: true
  validates :description, presence: true, length: { in: 20..1000 }
  validates :price, presence: true, numericality: { greater_than: 0 }

  def pic_avatar picture
    
  end

end
