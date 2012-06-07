module Custom

  class SemanticFormBuilder < Formtastic::SemanticFormBuilder

    JS_FOR_MULTISELECT = "<script type='text/javascript'>
                            $(document).ready(function() {
                              $('#%s').multiSelect();
                            });
                          </script>"

    private

    def multiSelect_input(method, options)
      (JS_FOR_MULTISELECT % "#{sanitized_object_name}_#{generate_association_input_name(method)}") << select_input(method, options)
    end

  end

end