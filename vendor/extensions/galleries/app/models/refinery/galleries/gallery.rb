module Refinery
  module Galleries
    class Gallery < Refinery::Core::BaseModel
      self.table_name = 'refinery_galleries'

      attr_accessible :name, :date, :location, :youtube, :video, :description, :position

      validates :name, :presence => true, :uniqueness => true
    end
  end
end
