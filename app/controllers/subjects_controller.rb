class SubjectsController < ApplicationController
  before_action :set_forum_from_forum_id
  before_action :set_newest
  before_action :set_subject, only: [:show, :edit, :update, :destroy]

  # GET /subjects
  # GET /subjects.json
  def index
    @subjects = @forum.subjects
  end

  # GET /subjects/1
  # GET /subjects/1.json
  def show
  end

  # GET /subjects/new
  def new
    @subject = Subject.new(forum_id: @forum)
  end

  # GET /subjects/1/edit
  def edit
  end

  # POST /subjects
  # POST /subjects.json
  def create
    @subject = @forum.subjects.new(subject_params)
    @subject.username = current_user.username

    respond_to do |format|
      if @subject.save
        format.html { render action: 'show'}
        format.json { render action: 'show', status: :created, location: @subject }
      else
        format.html { render action: 'new' }
        format.json { render json: @subject.errors, status: :unprocessable_entity }
      end
    end
  end

  def set_newest
        @newest = Discuss.friendly.find(:all, order: "updated_at", limit: 5).reverse
  end


  # PATCH/PUT /subjects/1
  # PATCH/PUT /subjects/1.json
  def update
    respond_to do |format|
      if @subject.update(subject_params)
        format.html { redirect_to @subjects, notice: 'Subject was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @subject.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subjects/1
  # DELETE /subjects/1.json
  def destroy
    @subject.destroy
    respond_to do |format|
      format.html { redirect_to :back }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subject
      @subject = @forum.subjects.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def subject_params
      params.require(:subject).permit(:forum_id, :title, :description)
    end
end
