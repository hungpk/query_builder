# encoding: utf-8

module QueryBuilder::CQL

  module Modifiers

    # Provides columns and values for UPDATE statement
    #
    module Update

      # Adds SET clause to the statement
      #
      # @param [Hash] options
      #
      # @return [QueryBuilder::Core::Statement] updated statement
      #
      def update(options)
        options
          .map { |key, value| Clause.new(column: key, value: value) }
          .inject(self, :<<)
      end
      alias_method :set, :update

      private

      def maybe_set
        list = clauses(:set)
        ["SET", list.join(", ")] if list.any?
      end

      # The clause for adding to a statement
      #
      # @api private
      #
      class Clause < BaseCondition

        type :set

      end # class Clause

    end # module Update

  end # module Modifiers

end # module QueryBuilder::CQL
