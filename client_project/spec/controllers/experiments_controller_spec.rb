require 'rails_helper'

RSpec.describe ExperimentsController do
	let(:user) { User.create }
  let(:other_user) { User.create }

	before(:each) do
		#this is a mock that intercepts a response & returns value that allows test:
		allow(controller).to receive(:confirm_logged_in).and_return(true)
	end

	describe "GET #index" do
    it "assigns all users as @users" do
      get :index
      expect(assigns(:users)).to eq(User.all)
    end

    it "assigns all experiments as @experiments" do
      get :index
      expect(assigns(:experiments)).to eq(Experiment.all)
     end
  end

  describe "GET show" do
		it "loads each experiment based on id" do
			experiment = Experiment.create
			get :show, id: experiment.id
			expect(assigns(:experiment).id).to eq(experiment.id)
		end

    xit "only loads experiments that belong to a particular user" do
      unloadable_experiment = Experiment.create(user: other_user)
     get :show, id: unloadable_experiment.id
     expect(assigns(:experiment).id).not_to eq(unloadable_experiment.id)
    end
   end

   describe "GET #new" do
    it "assigns new experiment as @experiment" do
      get :new
      expect(assigns(:experiment)).to be_a_new Experiment
    end
   end

   describe "GET #edit" do
    it "saves update of experiment" do
      get :edit
      expect(assigns(:experiment)).to be_a(Experiment)
    end
  end
end


