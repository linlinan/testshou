Pod::Spec.new do |s|
  s.name         = "testpodspec"
  s.version      = "0.0.1"
  s.summary      = "A short description of testpodspec."
  s.homepage     = "http://www.baidu.com"
  s.license      = "MIT"
  s.author       = { "linlinan" => "1059220638@qq.com" }
  s.source       = { :git => "http://EXAMPLE/testpodspec.git", :tag => "0.0.1" }
  s.source_files  = "Classes", "Classes/**/*.{h,m}"
  s.exclude_files = "Classes/Exclude"
  s.requires_arc = true
  s.platform	 = :ios
end
