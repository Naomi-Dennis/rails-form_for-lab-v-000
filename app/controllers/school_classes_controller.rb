class SchoolClassesController < ApplicationController


  def index
  end

  def new
  end

  def show
    @school_class = SchoolClass.find(params[:id]);
  end

  def create
    @new_school_class = SchoolClass.create(post_params(:school_class_title, :school_class_room_number))
    redirect_to schoolclass_path(@new_school_class)
  end

  def edit
    @school_class = SchoolClass.find(params[:id]);
  end

  def update
    @new_school_class = SchoolClass.update(post_params(:school_class_title, :school_class_room_number))
    redirect_to schoolclass_path(@new_school_class)
  end

  private

    def post_params
      params.require(:post).permit(*args)
    end
end
