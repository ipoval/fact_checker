require "fact_checker/version"
require "fact_checker/base"

module FactChecker

  def self.included(klass)
    klass.extend(ClassMethods)
    klass.instance_variable_set('@fact_checker', FactChecker::Base.new)
  end

  module ClassMethods

    def inherited(child)
      child.instance_variable_set('@fact_checker', @fact_checker.dup)
    end

    def define_fact(*options)
      @fact_checker.define_fact(options)
    end

  end

  def step_acomplished?(step)
  end

  def step_possible?(step)
  end

  def steps
  end

  def possible_steps(step)
  end

  def acomplished_steps(step)
  end
end
