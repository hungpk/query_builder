# encoding: utf-8

module CQLBuilder

  module Statements

    # Describes the 'USE' CQL3 statement
    #
    class Use < Statement

      attribute :name, required: true

      # Builds the statement
      #
      # @return [String]
      #
      def to_s
        "USE #{quote[name]};"
      end

    end # class Use

  end # module Statements

end # module CQLBuilder
