require 'spec_helper'

describe "password_resets/show" do
  before(:each) do
    @password_reset = assign(:password_reset, stub_model(PasswordReset,
      :new => "New"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/New/)
  end
end
