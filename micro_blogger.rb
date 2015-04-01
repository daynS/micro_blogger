#micro_blogger.rb

require 'jumpstart_auth'

class MicroBlogger
	attr_reader :client

	def initialize
		puts "Starting..."
		@client = JumpstartAuth.twitter
	end

	def tweet(message)
		@client.update(message)
	end
end

blogger = MicroBlogger.new
blogger.tweet("MicroBlogger Initialized")