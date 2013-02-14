module Continua

  class ObsExporter

	include Singleton
	
	def export(entry)		
	  result = entry.free_text
	  result.gsub!("&", "&amp;")
	  result.gsub!("<", "&lt;")
	  result.gsub!(">", "&gt;")
	  #result.gsub!("\"", "&quot;")
	  %{<CommunicatePCDData xmlns='urn:ihe:pcd:dec:2010'>#{result}</CommunicatePCDData>}
	end

  end
end
