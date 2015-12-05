class Post < ActiveRecord::Base

	belongs_to :user
  validates :title,
            presence: true
  validates :body,
            presence: true
  validates :user,
            presence: true
  def to_s
    title
  end

end
