class FablesController < InheritedResources::Base
  respond_to :html, :xml, :json

  def show
    increment_views
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
        if @fable.likers.empty?
          @fable.likers << Liker.create(user_id: current_user.id, fable_id: @fable.id, like: like)
        else
          liker = @fable.likers.where(user_id: current_user.id).last
          liker.update_attributes!(like: like)
        end
      end
    rescue
      res = false
    end
    if res
      render json: @fable
    else
      render json: @fable.errors, status: :unprocessable_entity
    end
  end

  private

  def increment_views
    @fable ||= Fable.find(params[:id])
    @fable.views ||= 0
    @fable.views += 1
    @fable.save
    # if @fable.save
    #   render json: @fable
    # else
    #   render json: @fable.errors, status: :unprocessable_entity
    # end
  end
end
