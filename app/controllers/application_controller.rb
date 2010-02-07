module ActiveSupport #:nodoc:
  module CoreExtensions #:nodoc:
    module Hash #:nodoc:
      module Conversions
        # We force :dasherize to be false, since we never want
        # it true.  Thanks very much to the reader on the
        # flexiblerails Google Group who suggested this better
        # approach.
        unless method_defined? :old_to_xml
          alias_method :old_to_xml, :to_xml
          def to_xml(options = {})
            options.merge!(:dasherize => false)
            old_to_xml(options)
          end
        end
      end
    end
    module Array #:nodoc:
      module Conversions
        # We force :dasherize to be false, since we never want
        # it to be true.
        unless method_defined? :old_to_xml
          alias_method :old_to_xml, :to_xml
          def to_xml(options = {})
            options.merge!(:dasherize => false)
            old_to_xml(options)
          end
        end
      end
    end
  end
end
module ActiveRecord #:nodoc:
  module Serialization
    # We force :dasherize to be false, since we never want it to
    # be true.
    unless method_defined? :old_to_xml
      alias_method :old_to_xml, :to_xml
      def to_xml(options = {})
        options.merge!(:dasherize => false)
        old_to_xml(options)
      end
    end
  end
end

# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
#  protect_from_forgery # See ActionController::RequestForgeryProtection for details

  # Scrub sensitive parameters from your log
  # filter_parameter_logging :password
end
