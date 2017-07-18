require 'representable/json'

module ReformOneTwoSix
  module Form::JSON
    def self.included(base)
      base.representer_class.send :include, Representable::JSON
    end

    def deserialize_method
      :from_json
    end
  end
end
