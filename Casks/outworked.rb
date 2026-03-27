  cask "outworked" do
    version "0.3.0"
    sha256 "5e724d75889bb990cc70e499ef55f75beea64c8ecc85e75955e374e9bade3cc0"                                                                
  
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
