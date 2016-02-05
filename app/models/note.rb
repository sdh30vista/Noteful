class Note < ActiveRecord::Base
  
  def preview
    self.content.slice(0..100) << ' ...(read more)'
  end
  
  belongs_to :user
  validates :title, presence: true
  validates :content, presence: true

  scope :sorted, lambda { order('created_at DESC') }

end
