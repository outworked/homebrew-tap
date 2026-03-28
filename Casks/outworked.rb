  cask "outworked" do
    version "0.3.1"
    sha256 "58c17e6c41adc50a00b1acb964d76799d843efa7df41c1dc9f695b19c6d78170"                                                                
  
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
