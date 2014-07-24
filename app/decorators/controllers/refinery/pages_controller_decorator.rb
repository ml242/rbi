Refinery::PagesController.class_eval do
  
    before_filter :find_last_blog_post, :only => [:home, :show]
    before_filter :get_images, :only => [:show]
 

    protected
    
      def get_images

      end


      def find_last_blog_post
        @blog_post = Refinery::Blog::Post.live.first
      end

  end