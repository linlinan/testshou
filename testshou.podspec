Pod::Spec.new do |s|


  s.name         = "testshou"
  s.version      = "0.0.1"
  s.summary      = "hello zheli shi shouye de jieshao bufen i am glad to tell you this is a good frame work"
  s.homepage     = "http://www.baidu.com"
  s.license      = "MIT"
  s.author       = { "linlinan" => "1059220638@qq.com" }
  s.source       = { :git => "https://github.com/linlinan/testshou.git",tag => "0.0.1" }
  s.source_files  = "testshou", "testshou/*.{h,m}"
  s.exclude_files = "testshou/Exclude"

end
