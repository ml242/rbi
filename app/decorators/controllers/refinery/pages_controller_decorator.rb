Refinery::PagesController.class_eval do
  
    # before_filter :find_last_blog_post, :only => [:home]
    before_filter :find_last_blog_post
  
    # protected
    
      def find_last_blog_post
        # @blog_post = Refinery::BlogPost.live.last
        @blog_post = Refinery::Blog::Post.live.last
      end

  end