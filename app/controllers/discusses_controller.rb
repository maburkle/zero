class DiscussesController < ApplicationController
  before_action :set_subject_from_subject_id
  before_action :set_forum_from_forum_id
  before_action :set_topic_from_topic_id
  before_action :set_discuss, only: [:show, :edit, :update, :destroy]

  # GET /discusses
  # GET /discusses.json
  def index
    @discusses = @topic.discusses
  end
  
  # GET /discusses/1
  # GET /discusses/1.json
  def show
  end

  # GET /discusses/new
  def new
    @discuss = Discuss.new(topic_id: @topic)
  end

  # GET /discusses/1/edit
  def edit
  end

  # POST /discusses
  # POST /discusses.json
  def create
    @discuss = @topic.discusses.new(discuss_params)
    @discuss.username = current_user.username

    respond_to do |format|
      if @discuss.save
        format.html { render 'show' }
        format.json { render action: 'show', status: :created, location: @discuss }
      else
        format.html { render action: 'new' }
        format.json { render json: @discuss.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /discusses/1
  # PATCH/PUT /discusses/1.json
  def update
    respond_to do |format|
      if @discuss.update(discuss_params)
        format.html { redirect_to @discuss, notice: 'Discuss was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @discuss.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /discusses/1
  # DELETE /discusses/1.json
  def destroy
    @discuss.destroy
    respond_to do |format|
      format.html { redirect_to :back }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_discuss
      @discuss = @topic.discusses.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def discuss_params
      params.require(:discuss).permit(:topic_id, :title, :description, :updated_at, :created_at)
    end
  end
