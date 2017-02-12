class LinksController < ApplicationController

def index
  @links = Link.all
end

def new
end

def create
  link = Link.create(
    slug: params[:slug],
    target_url: params[:target_url]
    )

  if link.save
      flash[:success] = "link successfuly created"
  end

  redirect_to "/links"
end

end
