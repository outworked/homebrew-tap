  cask "outworked" do
    version "0.3.0"
    sha256 "e518003d7c05f201d6b101ed1feaec433cb92214c9f0956a16efbb708c2708eb"                                                                
  
    url "https://github.com/outworked/outworked/releases/download/v#{version}/Outworked-#{version}-arm64.dmg"
    name "Outworked"
    desc "Animal Crossing x Claude Code"                                                                 
    homepage "https://github.com/outworked/outworked"                                                  
  
    livecheck do                                                                                       
      url :url    
      strategy :github_latest
    end

    app "Outworked.app"                                                                                
  
    zap trash: [                                                                                       
      "~/Library/Application Support/outworked",
      "~/Library/Preferences/com.outworked.app.plist",
      "~/Library/Caches/com.outworked.app",                                                            
    ]
  end                                                                                                  
