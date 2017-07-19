require 'reform_one_two_six/form/active_model'

require 'reform_one_two_six/active_record' if defined?(ActiveRecord)

ReformOneTwoSix::Form.class_eval do # DISCUSS: i'd prefer having a separate Rails module to be mixed into the Form but this is way more convenient for 99% users.
  include ReformOneTwoSix::Form::ActiveModel
  include ReformOneTwoSix::Form::ActiveModel::FormBuilderMethods
  include ReformOneTwoSix::Form::ActiveRecord if defined?(ActiveRecord)
end
