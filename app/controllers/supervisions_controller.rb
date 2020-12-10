class SupervisionsController < ApplicationController

  before_action :require_login

  def index
    @supervisions = current_user.supervisions_as_supervisie
  end

  def show
    @supervisions = current_user.supervisions_as_supervisie
  end

  def new
    @supervision = Supervision.new
  end

  def create
    @supervision = Supervision.create(params[:supervision])
  end

  def update
  end

  def destroy
  end
end
