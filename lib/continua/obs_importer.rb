module Continua

  class ObsImporter

	include Singleton
	
	#-------------------------------------------------------------------------------
	
	def initialize
	# @base_xpath = "./pcd:CommunicatePCDData"
	end
	
	#-------------------------------------------------------------------------------

	def import(result_xml)
	  result_xml.root.add_namespace_definition('pcd', "urn:ihe:pcd:dec:2010")
	  entry = Entry.new
	  entry.free_text = result_xml.at_xpath("./pcd:CommunicatePCDData").try(:inner_text)
	  entry
	end

  end
end
