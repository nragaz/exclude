require 'active_support/concern'

module Exclude
  extend ActiveSupport::Concern
  
  module ClassMethods
    # Returns a scope selecting all columns on the table except those specified
    # in the passed array (or string/symbol for one column).
    def exclude(*columns_to_subtract)
      columns_to_subtract = [*columns_to_subtract]
      selected_columns = self.column_names - columns_to_subtract
      
      select selected_columns.map { |c| "#{self.table_name}.#{c}" }.join(', ')
    rescue
      puts "Columns not available for `exclude`"
    end
  end
end
