class WikisController < ApplicationController
  before_action :authorize_request, except: :show
  before_action :set_wiki, except: %i[create index ]

  # GET /wikis
  def index
    @wikis = Wiki.all
    render json: @wikis, status: :ok
  end

  # GET /wikis/1
  def show
    puts @wiki.to_json
    render json: @wiki, status: :ok
  end

  # POST /wikis
  def create
    puts 'parâmetros: ' + wiki_params.to_json
    @wiki = Wiki.new(wiki_params)

    if @wiki.save
      render json: @wiki, status: :created, location: @wiki
    else
      render json: @wiki.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /wikis/1
  def update
    puts 'parâmetros: ' + wiki_params.to_json
    if @wiki.update(wiki_params)
      render json: @wiki
    else
      render json: @wiki.errors, status: :unprocessable_entity
    end
  end

  # DELETE /wikis/1
  def destroy
    @wiki.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wiki
      @wiki = Wiki.find(params[:id])
      rescue ActiveRecord::RecordNotFound
        render json: { errors: 'Wiki not found' }, status: :not_found
    end

    # Only allow a trusted parameter "white list" through.
    def wiki_params
      params.permit(:avatar, :title, :description,:steps, :materiais)
    end
end
