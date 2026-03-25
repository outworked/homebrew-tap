  cask "outworked" do
    version "0.2.1"
    sha256 "9680b762a61ef070c3ffc6c5873e207ab86bf799cc8b08b9e8684bb93beadd0f"                                                                
  
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
