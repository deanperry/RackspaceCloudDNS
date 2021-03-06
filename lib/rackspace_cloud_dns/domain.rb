module RackspaceCloudDns
	class Domain

		# Create a domain. name and email address are required.
		# ttl is set by default to 3600 and a comment is optional
		def self.create(name, email_address, ttl=3600, comment="")
			options = {:domains => [:name => name, :emailAddress => email_address, :ttl => ttl, :comment => comment]}

			RackspaceCloudDns::Request.request("domains", :post, options)
		end

		# List all domains
		def self.all
			RackspaceCloudDns::Request.request("domains", :get)
		end

		# Search all domains
		def self.search(query)
			RackspaceCloudDns::Request.request("domains?name=#{query}", :get)
		end

		# List the domain and all records associated with it
		def self.show(domain_id)
			RackspaceCloudDns::Request.request("domains/#{domain_id}", :get)
		end

		# Edit a domain
		def self.edit(domain_id, email_address, ttl=3600, comment="")
			options = {:emailAddress => email_address, :ttl => ttl, :comment => comment}

			RackspaceCloudDns::Request.request("domains/#{domain_id}", :put, options)
		end

		# Destroy a domain
		def self.destroy(domain_id)
			RackspaceCloudDns::Request.request("domains/#{domain_id}", :delete)
		end

	end
end