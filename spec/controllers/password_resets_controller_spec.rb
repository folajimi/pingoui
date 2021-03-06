require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe PasswordResetsController do

  # This should return the minimal set of attributes required to create a valid
  # PasswordReset. As you add validations to PasswordReset, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # PasswordResetsController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all password_resets as @password_resets" do
      password_reset = PasswordReset.create! valid_attributes
      get :index, {}, valid_session
      assigns(:password_resets).should eq([password_reset])
    end
  end

  describe "GET show" do
    it "assigns the requested password_reset as @password_reset" do
      password_reset = PasswordReset.create! valid_attributes
      get :show, {:id => password_reset.to_param}, valid_session
      assigns(:password_reset).should eq(password_reset)
    end
  end

  describe "GET new" do
    it "assigns a new password_reset as @password_reset" do
      get :new, {}, valid_session
      assigns(:password_reset).should be_a_new(PasswordReset)
    end
  end

  describe "GET edit" do
    it "assigns the requested password_reset as @password_reset" do
      password_reset = PasswordReset.create! valid_attributes
      get :edit, {:id => password_reset.to_param}, valid_session
      assigns(:password_reset).should eq(password_reset)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new PasswordReset" do
        expect {
          post :create, {:password_reset => valid_attributes}, valid_session
        }.to change(PasswordReset, :count).by(1)
      end

      it "assigns a newly created password_reset as @password_reset" do
        post :create, {:password_reset => valid_attributes}, valid_session
        assigns(:password_reset).should be_a(PasswordReset)
        assigns(:password_reset).should be_persisted
      end

      it "redirects to the created password_reset" do
        post :create, {:password_reset => valid_attributes}, valid_session
        response.should redirect_to(PasswordReset.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved password_reset as @password_reset" do
        # Trigger the behavior that occurs when invalid params are submitted
        PasswordReset.any_instance.stub(:save).and_return(false)
        post :create, {:password_reset => {}}, valid_session
        assigns(:password_reset).should be_a_new(PasswordReset)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        PasswordReset.any_instance.stub(:save).and_return(false)
        post :create, {:password_reset => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested password_reset" do
        password_reset = PasswordReset.create! valid_attributes
        # Assuming there are no other password_resets in the database, this
        # specifies that the PasswordReset created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        PasswordReset.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => password_reset.to_param, :password_reset => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested password_reset as @password_reset" do
        password_reset = PasswordReset.create! valid_attributes
        put :update, {:id => password_reset.to_param, :password_reset => valid_attributes}, valid_session
        assigns(:password_reset).should eq(password_reset)
      end

      it "redirects to the password_reset" do
        password_reset = PasswordReset.create! valid_attributes
        put :update, {:id => password_reset.to_param, :password_reset => valid_attributes}, valid_session
        response.should redirect_to(password_reset)
      end
    end

    describe "with invalid params" do
      it "assigns the password_reset as @password_reset" do
        password_reset = PasswordReset.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        PasswordReset.any_instance.stub(:save).and_return(false)
        put :update, {:id => password_reset.to_param, :password_reset => {}}, valid_session
        assigns(:password_reset).should eq(password_reset)
      end

      it "re-renders the 'edit' template" do
        password_reset = PasswordReset.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        PasswordReset.any_instance.stub(:save).and_return(false)
        put :update, {:id => password_reset.to_param, :password_reset => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested password_reset" do
      password_reset = PasswordReset.create! valid_attributes
      expect {
        delete :destroy, {:id => password_reset.to_param}, valid_session
      }.to change(PasswordReset, :count).by(-1)
    end

    it "redirects to the password_resets list" do
      password_reset = PasswordReset.create! valid_attributes
      delete :destroy, {:id => password_reset.to_param}, valid_session
      response.should redirect_to(password_resets_url)
    end
  end

end
