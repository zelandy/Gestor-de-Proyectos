class PrependInput < SimpleForm::Inputs::Base
  def input
    "<div class='input-prepend'><span>#{options[:prepend]}</span>#{@builder.text_field(attribute_name, input_html_options)}</div>".html_safe
  end
end