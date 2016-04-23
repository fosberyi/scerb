require "spec_helper"

describe ".rb template handler" do
  it "handles a basic .rb file template" do
    get "/handlers/rb_handler"
    output = "This is my first <b>template handler</b>!"
    expect(response.body).to eq output
  end
end
