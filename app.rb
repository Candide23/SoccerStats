require "sinatra"
require "sinatra/reloader" if development?
require "httparty"

API_URL ||= "https://v3.football.api-sports.io"
API_KEY ||= ENV['API_KEY']

if API_KEY.nil? || API_KEY.empty?
  raise "❌ API_KEY is missing! Set it in GitHub Secrets."
end

# Home route
get ("/") do
  erb(:index)
end

post ("/matches") do
  team_name = params[:team].strip

  response = HTTParty.get("#{API_URL}/teams?search=#{team_name}", headers: { "x-apisports-key" => API_KEY })

  if response.success? && !response.parsed_response["response"].empty?
    team_data = response.parsed_response["response"].first
    team_id = team_data["team"]["id"]

    matches_response = HTTParty.get("#{API_URL}/fixtures?team=#{team_id}&season=2023", headers: { "x-apisports-key" => API_KEY })

    if matches_response.success?
      matches_data = matches_response.parsed_response["response"]
      if matches_data && !matches_data.empty?
        @matches = matches_data.last(5)
      else
        @error = "No recent matches found for this team."
      end
    else
      @error = "Failed to fetch matches. Please try again later."
      puts "API Error: #{matches_response.parsed_response["errors"]}"
    end
  else
    @error = "Team not found or API request failed."
  end

  erb(:index)
end
