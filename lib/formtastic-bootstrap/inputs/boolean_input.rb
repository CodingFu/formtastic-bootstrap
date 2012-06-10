# TODO See if this can be refactored to make use of some of the Choices code.
module FormtasticBootstrap
  module Inputs
    class BooleanInput < Formtastic::Inputs::BooleanInput
      include Base

      def to_html
        control_group_wrapping do
          label_html <<
          hidden_field_html <<
          controls_wrapping do
            label_with_nested_checkbox
          end
        end
      end

    end
  end
end