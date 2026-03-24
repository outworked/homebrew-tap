  cask "outworked" do
    version "0.2.0"
    sha256 "125128a3b04888c06aee2f4428aaff29635a9c037924b800ca6a06911b7526a2"                                                                
  
    url "https://github.com/outworked/outworked/releases/download/v#{version}/Outworked-#{version}.dmg"
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
