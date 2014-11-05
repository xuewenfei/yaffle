module Yaffle
  module ActAsYaffle
    extend ActiveSupport::Concern
    included do 
    end
    module ClassMethods
      def act_as_yaffle(options = {})
        cattr_accessor :yaffle_text_field
        self.yaffle_text_field = ( options[:yaffle_text_field] || :last_squawk ).to_s
      end
    end
  end
end

ActiveRecord::Base.send :include, Yaffle::ActAsYaffle
