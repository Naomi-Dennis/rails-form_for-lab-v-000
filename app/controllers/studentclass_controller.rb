class StudentClass < ApplicationController


  def index
  end

  def new
  end

  def show
  end

  def create
  end

  def edit
  end

  def update
  end

  private

    def post_params
      params.require(:post).permit(*args)
    end
end
