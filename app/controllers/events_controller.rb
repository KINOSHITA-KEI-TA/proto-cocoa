class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]
  before_action :move_to_index, except: [:index, :show, :edit, :new]
  # before_action :correct_user, only: [:new, :index, :show, :edit, :create, :update, :destroy]
  # GET /events
  # GET /events.json
  def index
    # @events = Event.all
    @events = Event.where(user_id: current_user.id)
    # where(buyer_id: current_user.id)
    # @events.all
  end

  # GET /events/1
  # GET /events/1.json
  def show
    @comment = Comment.new
    @comments = @event.comments.includes(:user)
  end

  # GET /events/new
  def new
    @event = Event.new
  end

  # GET /events/1/edit
  def edit
  end

  # POST /events
  # POST /events.json
  def create
    @event = Event.new(event_params)

    respond_to do |format|
      if @event.save
        format.html { redirect_to @event, notice: 'Event was successfully created.' }
        format.json { render :show, status: :created, location: @event }
      else
        format.html { render :new }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @event.update(event_params)
        format.html { redirect_to @event, notice: 'Event was successfully updated.' }
        format.json { render :show, status: :ok, location: @event }
      else
        format.html { render :edit }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @event.destroy
    respond_to do |format|
      format.html { redirect_to events_url, notice: 'Event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def event_params
      params.require(:event).permit(:title, :body, :start_date, :end_date).merge(user_id: current_user.id)
    end

    def move_to_index
      unless user_signed_in?
        redirect_to "/users/sign_up"
      end
    end

    def user_params
      params.require(:user).permit(:name, :email)
    end

    # def set_user
    #   @user = User.find(params[:user_id])
    # end
end
