module ReformOneTwoSix
  class Form < Contract
    self.representer_class = ReformOneTwoSix::Representer.for(:form_class => self)

    require "reform_one_two_six/form/validate"
    include Validate # extend Contract#validate with additional behaviour.
    require "reform_one_two_six/form/sync"
    include Sync
    require "reform_one_two_six/form/save"
    include Save
    require "reform_one_two_six/form/prepopulate"
    include Prepopulate

    require "reform_one_two_six/form/multi_parameter_attributes"
    include MultiParameterAttributes # TODO: make features dynamic.

  private
    def aliased_model
      # TODO: cache the Expose.from class!
      ReformOneTwoSix::Expose.from(mapper).new(:model => model)
    end


    require "reform_one_two_six/form/scalar"
    extend Scalar::Property # experimental feature!


    # DISCUSS: should that be optional? hooks into #validate, too.
    require "reform_one_two_six/form/changed"
    register_feature Changed
    include Changed
  end
end
