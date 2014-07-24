module Refinery
  module Galleries
    class Gallery < Refinery::Core::BaseModel
      self.table_name = 'refinery_galleries'

      attr_accessible :name, :date, :location, :description, :position
      has_many_page_images 

      validates :name, :presence => true, :uniqueness => true
    end
  end
end
