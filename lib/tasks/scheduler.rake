desc "Refresh the token value with the Instagram API"
task :refresh=> :environment do
  puts "[RAKE] Refreshing Instagram token..."
  client = InstagramTokenAgent::Client.new(app.settings)
  client.refresh
  puts "[RAKE] Token refreshed!"
end
