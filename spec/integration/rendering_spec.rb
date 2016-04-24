require "spec_helper"

describe ".scerb template handler" do
  it "handles a .scerb file template" do
    test_color = "#FF0000"
    percentage = "10%"
    resulting_color = darken_color(test_color, percentage)
    get "/handlers/scerb.css", {color: test_color, percentage: percentage}
    expect(compress_string(response.body))
      .to eq compress_string(expected_simple_css(resulting_color))
  end

  def expected_simple_css(color)
    ".css-class {color: #{color};}"
  end

  def compress_string(str)
    str.gsub(/\s+/, '').gsub(/\n+/, '')
  end

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
