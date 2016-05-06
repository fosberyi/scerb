module SassFunctions
  def darken_color(hex, percentage)
    base_sass_eval_context.darken(
      base_sass_eval_context.hex_color(hex),
      sass_number(percentage.to_i)
    ).tap {|color|
      color.options = base_sass_options
    }.to_s
  end

  def base_sass_eval_context
    @base_sass_eval_context ||= Sass::Script::Functions::EvaluationContext.new(base_sass_environment)
  end

  def base_sass_environment
    @base_sass_environment ||= Sass::Environment.new(nil, base_sass_options)
  end

  def sass_number(int)
    Sass::Script::Value::Number.new(int)
  end

  def base_sass_options
    {
       syntax: :scss,
    }
  end
end
