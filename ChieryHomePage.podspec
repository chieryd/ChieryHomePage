Pod::Spec.new do |s|

  s.name         = "ChieryHomePage"
  s.version      = "0.0.8"
  s.summary      = "首页相关"

  s.description  = <<-DESC
                  抽出的首页相关的demo
                   DESC

  s.homepage     = "https://github.com/chieryd/ChieryHomePage"
  s.license      = { :type => 'MIT', :text => <<-LICENSE
                    Copyright 2012
                    Permission is granted to...
                  LICENSE
                   }

  s.author             = { "chieyw" => "chieryw@163.com" }
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/chieryd/ChieryHomePage.git", :tag => "#{s.version}" }
  s.compiler_flags = '-w'


  s.dependency "ChieryCommonKitLib"
  s.dependency "ChieryJumpHandleLib"

  s.source_files  = "ChieryHomePage.h", "ChieryHomePage/*.{h,m}"
  s.public_header_files = "ChieryHomePage.h", "ChieryHomePage/**/*.h"
  s.requires_arc = true  

end
