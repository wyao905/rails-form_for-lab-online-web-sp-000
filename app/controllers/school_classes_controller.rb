class SchoolClassesController < ApplicationController
  def index
    @schoolclasses = SchoolClass.all
  end
  
  def new
    @schoolclass = SchoolClass.new
  end
  
  def create
    @schoolclass = SchoolClass.new(params.require(:school_class).permit(:title, :room_number))
    @schoolclass.save
    redirect_to school_class_path(@schoolclass)
  end
  
  def show
    @schoolclass = SchoolClass.find(params[:id])
  end
  
  def edit
    @schoolclass = SchoolClass.find(params[:id])
  end
  
  def update
  end
end