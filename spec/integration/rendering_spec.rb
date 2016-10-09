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

  it "can render a full scerb file to a css" do
    create_view_file <<-scerbfile
      .this {
        color: "#FFF";
      }
    scerbfile
    get "/handlers/integration.css", {color: "#FFF", percentage: "20%"}
  end

  def expected_simple_css(color)
    ".css-class {color: #{color};}"
  end

  def compress_string(str)
    str.gsub(/\s+/, '').gsub(/\n+/, '')
  end
end
