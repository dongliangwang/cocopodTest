

Pod::Spec.new do |spec|

  spec.name         = "cocopodTest"
  spec.version      = "0.0.1"
  spec.summary      = "A short description of cocopodTest."

  spec.description  = <<-DESC
                   DESC

  spec.homepage     = "http://EXAMPLE/cocopodTest"

  spec.license      = "MIT (example)"

  spec.author             = { "wangdongliang03" => "wangdongliang03@kuaishou.com" }
  spec.authors            = { "wangdongliang03" => "wangdongliang03@kuaishou.com" }
  spec.social_media_url   = "https://twitter.com/wangdongliang03"

  

  spec.platform     = :ios
  spec.platform     = :ios, "8.0"

  spec.ios.deployment_target = "580"

  spec.source       = { :git => "https://github.com/dongliangwang/cocopodTest.git", :tag => "#{spec.version}" }


  spec.source_files  = "ExerciseDemo", "ExerciseDemo/**/*.{h,m}"
  spec.exclude_files = "ExerciseDemo/CocopodFile"

  # spec.public_header_files = "CocopodFile/**/*.h"


  # spec.resource  = "icon.png"
  # spec.resources = "Resources/*.png"

 

end
