
Pod::Spec.new do |s|

  s.name         = "TestSDKDemo"
  s.version      = "1.0.3"
  s.summary      = "一个新的尝试"

  s.homepage     = "https://github.com/lijingguo987/TestSDKDemo.git"

#s.license      = "MIT"
   s.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  s.author             = { "lijingguo" => "852470976@qq.com" }

   s.platform     = :ios, '7.0'

  s.source = { :git => "https://github.com/lijingguo987/TestSDKDemo.git", :tag => s.version }


  s.source_files  = "TestSDKDemo/**/*.{h,m}"

s.requires_arc = true


end
