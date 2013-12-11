require 'spec_helper'

describe "password_resets/edit" do
  before(:each) do
    @password_reset = assign(:password_reset, stub_model(PasswordReset,
      :new => "MyString"
    ))
  end

  it "renders the edit password_reset form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => password_resets_path(@password_reset), :method => "post" do
      assert_select "input#password_reset_new", :name => "password_reset[new]"
    end
  end
end
