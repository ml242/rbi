Refinery::PagesController.class_eval do
  
    before_filter :find_last_blog_post, :only => [:home]
    # before_filter :find_last_blog_post
 
    def index

    end

    protected
    
      def get_index

      end

      def find_last_blog_post
        @blog_post = Refinery::Blog::Post.live.first
      end

  end