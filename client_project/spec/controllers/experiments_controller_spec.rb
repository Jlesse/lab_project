require 'rails_helper'

RSpec.describe ExperimentsController do
	before(:each) do
		#this is a mock that intercepts a response & returns value that allows test:
		allow(controller).to receive(:confirm_logged_in).and_return(true)
	end
		describe "GET show" do
		it "loads each experiment based on id" do
			experiment = Experiment.create

			get :show, id: experiment.id
		
			expect(assigns(:experiment).id).to eq(experiment.id)
		end
	end	


		it "only loads experiments that belong to me" do 

			
		end
	# experiment should be related to current user
	# for all, use expect uesr.all.count to equal experiemnt.all.count

	
end