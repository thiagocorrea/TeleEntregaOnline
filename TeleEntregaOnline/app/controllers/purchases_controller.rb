class PurchasesController < ApplicationController
	  def index
	@purchase = Purchase.new
	
	respond_to do |format|
	  format.html # index.html.erb
          format.json { render :json => @purchase }
	end
  end
  
  def create
     @purchase = Purchase.new(params[:purchase])

     respond_to do |format|
     if @purchase.save
          format.html { redirect_to @purchase, :notice => "Pedido efetuado com sucesso!" }
          format.json { render :json => @purchase, :status => :created, :location => @purchase }
     else
          format.html { render :action => "index", :notice => "Erro" }
          format.json { render :json => @purchase.errors, :status => :improcessable_entity } 
     end
     end
  end

 def show
     @purchase = Purchase.find(params[:id])

     respond_to do |format|
          format.html 
          format.json { render :json => @purchase }
     end
  end

end
