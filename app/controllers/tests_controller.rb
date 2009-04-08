class TestsController < ApplicationController
  def show
    @environment = Environment.find(params[:environment_id])
    @unittest = Unittest.find(params[:id])
  end
end
