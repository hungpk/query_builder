# encoding: utf-8

require_relative "condition"

module CQLBuilder

  module Clauses

    # Describes a part of WHERE clause
    #
    # @example
    #   clause = Where.new(column: :foo, value: gt(1))
    #   clause.type # => :where
    #   clause.to_s # => "foo > 1"
    #
    class Where < Condition

      type :where

    end # class Where

  end # module Clauses

end # module CQLBuilder
