class PagesController < ApplicationController
  def home
    @pages = Page.all
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @pages }
      format.json { render :json => @pages }
    end
  end

  def destroy
    @page.destroy

    respond_to do |format|
      format.html { redirect_to ponies_url }
      format.json { head :no_content }
      format.js   { render :layout => false }
    end
  end

end
