class RsvpsController < ApplicationController
before_action :set_user
before_action :set_event
before_action :set_rsvp, only: :destroy

  def new
  	@rsvp = Rsvp.new
  end

  def create
    @rsvp = Rsvp.new(rsvp_params)
    @rsvp.user = @user
    @rsvp.event = @event
    respond_to do |format|
      if @rsvp.save
        format.html { redirect_to :back, notice: 'Event was successfully created.' }
        format.json { render action: 'show', status: :created, location: @event }
      else
        format.html { render action: 'new' }
        format.json { render json: @rsvp.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @rsvp.destroy
    respond_to do |format|
      format.html { redirect_to :back }
      format.json { head :no_content }
    end
  end

  private

  def set_rsvp
    @rsvp = Rsvp.find(params[:id])
  end

  def set_user
  	@user = current_user
  end

  def rsvp_params
    params.require(:rsvp).permit(:main_job, :user_id, :event_id, :second_job)
  end

  def set_event
    @event = Event.friendly.find(params[:event_id])
  end
end