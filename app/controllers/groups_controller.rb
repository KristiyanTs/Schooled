class GroupsController < ApplicationController
  load_and_authorize_resource
  before_action :set_school
  before_action :set_group, only: [:show, :edit, :update, :destroy]

  def index
    @school = School.find(params[:school_id])
    @groups = @school.groups
  end

  def show
  end

  def new
    @group = @school.groups.new
  end

  def edit
  end

  def create
    @school = School.find(params[:school_id])
    @group = @school.groups.new(group_params)

    respond_to do |format|
      if @group.save
        format.html { redirect_to school_groups_path(@school), notice: "Group was successfully created." }
        format.json { render :show, status: :created, location: @group }
      else
        format.html { render :new, notice: "There was an error while creating the group." }
        format.json { render json: @group.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @group.update(group_params)
        format.html { redirect_to school_group_path(@school, @group), notice: "Group was successfully created." }
        format.json { render :show, status: :created, location: @group }
      else
        format.html { render :new, notice: "There was an error while creating the group." }
        format.json { render json: @group.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def set_school
    @school = School.find(params[:school_id])
  end

  def set_group
    @group = @school.groups.find(params[:id])
  end

  def group_params
    params.require(:group).permit(:name, :grade, :teacher_id)
  end
end
