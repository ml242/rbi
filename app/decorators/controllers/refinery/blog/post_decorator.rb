Refinery::Blog::Post.class_eval do
  # Whitelist the :image_id parameter for form submission
  attr_accessible :main_image_id
  belongs_to :main_image 
end