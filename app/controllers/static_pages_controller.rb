class StaticPagesController < ApplicationController
  def index
    if params[:collection_id].present?
      client = PexelsClient.new
      response = client.collection_media(params[:collection_id])
      @media = JSON.parse(response.body)
    end

  end
end
