class BoardsController < ApplicationController
  before_filter :authenticate

  def index
    @jobs = Job.all
  end
end
