class LessonTypesController < ApplicationController
  before_action :set_lesson_type, only: [:show, :update, :destroy]

  # GET /lesson_types
  def index
    @lesson_types = LessonType
    @lesson_types = @lesson_types.where(:lesson_id => params&.[](:lesson_id)) if params&.[](:lesson_id)
    @lesson_types = @lesson_types.all

    render json: {lesson_types: @lesson_types}
  end

  # GET /lesson_types/1
  def show
    render json: {lesson_type: @lesson_type}
  end

  # POST /lesson_types
  def create
    @lesson_type = LessonType.new(lesson_type_params)

    if @lesson_type.save
      render json: {lesson_type: @lesson_type}, status: :created, location: @lesson_type
    else
      render json: @lesson_type.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /lesson_types/1
  def update
    if @lesson_type.update(lesson_type_params)
      render json: {lesson_type: @lesson_type}
    else
      render json: @lesson_type.errors, status: :unprocessable_entity
    end
  end

  # DELETE /lesson_types/1
  def destroy
    @lesson_type.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lesson_type
      @lesson_type = LessonType.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def lesson_type_params
      params.require(:lesson_type).permit(:lesson_id, :activity_type_id)
    end
end
