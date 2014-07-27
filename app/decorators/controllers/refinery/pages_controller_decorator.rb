Refinery::PagesController.class_eval do
  
    before_filter :find_last_blog_post, :only => [:home]
    before_filter :get_last_four_galleries, :only => [:home]
    before_filter :get_gallery_index, :only => [:gallery, :show]
 

    protected
    
      def get_gallery_index
        @gallery_index = Refinery::Page.where(:parent_id => 6)
      end

      def get_last_four_galleries
        @gallery_recent = Refinery::Page.where(:parent_id => 6)
        @gallery_recent.find(:all, :order => "id desc", :limit => 4).reverse
      end


      def find_last_blog_post
        @blog_post = Refinery::Blog::Post.live.first
      end

  end