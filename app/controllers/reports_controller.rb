class ReportsController < ApplicationController
  def main
  	
  end

  def phone_list
  	@builders = Builder.all
  	@supers_without_builders = Supervisor.where(:builder_id => nil) 
  end

end
