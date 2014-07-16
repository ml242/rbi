class AddMainImageToRefineryBlogPosts < ActiveRecord::Migration
  def change
    add_column :refinery_blog_posts, :main_image_id, :integer
  end
end
