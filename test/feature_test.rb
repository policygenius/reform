require 'test_helper'

class FeatureInheritanceTest < BaseTest
  class AlbumForm < ReformOneTwoSix::Form
    # include ReformOneTwoSix::Form::ActiveModel
    # include Coercion
    # include MultiParameterAttributes

    property :band do
      property :label do
      end
    end
  end

  subject { AlbumForm.new(Album.new(nil, nil, nil, Band.new(Label.new))) }

  # it { subject.class.include?(ReformOneTwoSix::Form::ActiveModel) }
  # it { subject.class.include?(ReformOneTwoSix::Form::Coercion) }
  # it { subject.is_a?(ReformOneTwoSix::Form::MultiParameterAttributes) }

  # it { subject.band.class.include?(ReformOneTwoSix::Form::ActiveModel) }
  # it { subject.band.is_a?(ReformOneTwoSix::Form::Coercion) }
  # it { subject.band.is_a?(ReformOneTwoSix::Form::MultiParameterAttributes) }

  # it { subject.band.label.is_a?(ReformOneTwoSix::Form::ActiveModel) }
  # it { subject.band.label.is_a?(ReformOneTwoSix::Form::Coercion) }
  # it { subject.band.label.is_a?(ReformOneTwoSix::Form::MultiParameterAttributes) }
end
