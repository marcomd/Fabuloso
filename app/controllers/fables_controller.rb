class FablesController < InheritedResources::Base
  before_action :set_fable, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index]

  # GET /fables
  # GET /fables.json
  def index
    @fables = Fable.all
    @likes = current_user ? current_user.likes.where(like: true).map(&:fable_id) : []
  end

  # GET /fables/1
  # GET /fables/1.json
  def show
    increment_views
  end

  # GET /fables/new
  def new
    @fable = Fable.new
  end

  # GET /fables/1/edit
  def edit
  end

  # POST /fables
  # POST /fables.json
  def create
    @fable = Fable.new(fable_params)

    respond_to do |format|
      if @fable.save
        format.html { redirect_to @fable, notice: 'Fable was successfully created.' }
        format.json { render :show, status: :created, location: @fable }
      else
        format.html { render :new }
        format.json { render json: @fable.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fables/1
  # PATCH/PUT /fables/1.json
  def update
    respond_to do |format|
      if @fable.update(fable_params)
        format.html { redirect_to @fable, notice: 'Fable was successfully updated.' }
        format.json { render :show, status: :ok, location: @fable }
      else
        format.html { render :edit }
        format.json { render json: @fable.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fables/1
  # DELETE /fables/1.json
  def destroy
    @fable.destroy
    respond_to do |format|
      format.html { redirect_to fables_url, notice: 'Fable was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def update_likes
    @fable ||= Fable.find(params[:id])
    like = params[:like] == 'true' ? true : false
    res = true
    begin
      Fable.transaction do
        @fable.likes ||= 0
        if like
          @fable.likes += 1
        else
          @fable.likes -= 1
        end
        @fable.save!
        if @fable.likers.where(user_id: current_user.id, fable_id: @fable.id).empty?
          @fable.likers << Liker.create(user_id: current_user.id, fable_id: @fable.id, like: like)
        else
          liker = @fable.likers.where(user_id: current_user.id).last
          raise("Like not found for like #{@fable.id} user #{current_user.id}") unless liker
          liker.update_attributes!(like: like)
        end
      end
      render json: @fable
    rescue
      render json: ($!.message || @fable.errors), status: :unprocessable_entity
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_fable
    @fable = Fable.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def fable_params
    params.require(:fable).permit(:user_id, :name, :story, :summary, :views, :likes)
  end

  def increment_views
    key = params[:id].to_i
    unless session[key]
      # @fable ||= Fable.find(params[:id])
      @fable.views ||= 0
      @fable.views += 1
      session[key] = @fable.save
    end
  end
end
