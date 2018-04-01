class SchoolClassController < ApplicationController


  def index
  end

  def new
  end

  def show
    @school_class = SchoolClass.find(params[:id]);
  end

  def create
    SchoolClass.create(post_params(:school_class_title, :school_class_room_number))
    redirect_to school
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
