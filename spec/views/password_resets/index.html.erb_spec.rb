require 'spec_helper'

describe "password_resets/index" do
  before(:each) do
    assign(:password_resets, [
      stub_model(PasswordReset,
        :new => "New"
      ),
      stub_model(PasswordReset,
        :new => "New"
      )
    ])
  end

  it "renders a list of password_resets" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "New".to_s, :count => 2
  end
end
