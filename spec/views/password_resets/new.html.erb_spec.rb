require 'spec_helper'

describe "password_resets/new" do
  before(:each) do
    assign(:password_reset, stub_model(PasswordReset,
      :new => "MyString"
    ).as_new_record)
  end

  it "renders new password_reset form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => password_resets_path, :method => "post" do
      assert_select "input#password_reset_new", :name => "password_reset[new]"
    end
  end
end
