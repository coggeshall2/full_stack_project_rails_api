class TrailsController <  OpenReadController
  before_action :set_trail, only: [:show, :update, :destroy]

  # GET /trails
  def index
    @trails = Trail.all
    render json: @trails
  end

#   def permission_denied
#   render :json => "public/401", :status => :unauthorized
# end
  # GET /trails/1
  def show
    render json: @trail
  end

  # POST /trails
  def create
    @trail = current_user.trails.build(trail_params)
    # @trail = Trail.new(trail_params)
    # @trail.user_id = 1
    # @trail.user_id = current_user
    # # p current_user

    if @trail.save
      render json: @trail, status: :created, location: @trail
    else
      render json: @trail.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /trails/1
  def update

    if @trail.update(trail_params)
      render json: @trail
    else
      render json: @trail.errors, status: :unprocessable_entity
    end
  end

  # DELETE /trails/1
  def destroy

    @trail.destroy
  end

  private

    # Use callbacks to share common setup or constraints between actions.
    def set_trail
      @trail = current_user.trails.find(params[:id])
    end


    # Only allow a trusted parameter "white list" through.
    def trail_params
      params.require(:trail).permit(:user_id, :trail_name, :location, :distance, :elevation_gain, :trail_type, :skill_level)
    end
end
