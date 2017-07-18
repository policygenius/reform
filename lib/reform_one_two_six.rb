module ReformOneTwoSix
  def self.rails3_0?
    ::ActiveModel::VERSION::MAJOR == 3 and ::ActiveModel::VERSION::MINOR == 0
  end
end

require 'reform_one_two_six/contract'
require 'reform_one_two_six/form'
require 'reform_one_two_six/form/composition'
require 'reform_one_two_six/form/active_model'
require 'reform_one_two_six/form/module'
require 'reform_one_two_six/composition'


if defined?(Rails) # DISCUSS: is everyone ok with this?
  require 'reform_one_two_six/rails'
end
