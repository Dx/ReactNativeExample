Pod::Spec.new do |s|

  s.name         = "IncdRecogKit"
  s.version      = "1.1.15"
  s.summary      = "IncdRecogKit for iOS."

  s.description  = <<-DESC
  Incode Recognition Kit for iOS
                   DESC

  s.homepage     = "https://github.com/IncodeTechnologies/"
  s.license      = { :type => 'BSD', :text => <<-LICENSE
      Copyright (c) 2018, Incode
      All rights reserved.

      Redistribution and use in source and binary forms, with or without
      modification, are permitted provided that the following conditions are met:

      * Redistributions of source code must retain the above copyright notice,
        this list of conditions and the following disclaimer.
      * Redistributions in binary form must reproduce the above copyright
        notice, this list of conditions and the following disclaimer in the
        documentation and/or other materials provided with the distribution.

      THIS SOFTWARE IS PROVIDED BY THE AUTHOR AND CONTRIBUTORS ``AS IS'' AND ANY
      EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
      WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
      DISCLAIMED. IN NO EVENT SHALL THE AUTHOR OR CONTRIBUTORS BE LIABLE FOR ANY
      DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
      (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
      SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
      CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
      LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
      OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH
      DAMAGE.
      LICENSE
    }


  s.author             = { "Marko Čančar" => "marko.cancar@incode.com" }
  s.platform = :ios, "9.0"
  s.source       = { :git => "https://github.com/IncodeTechnologies/IncdRecogKit.git", :tag => "#{s.version}" }
  s.source_files  = 'IncdRecogKit/IncdRecogKit/**/*.{hpp,cpp,h,mm}'
  s.frameworks   = 'CoreGraphics', 'CoreImage', 'UIKit', 'CoreMedia', 'AVFoundation'
  s.pod_target_xcconfig = { #'FRAMEWORK_SEARCH_PATHS' => '"$(PROJECT_DIR)/Frameworks"',
        'ARCHS[sdk=iphonesimulator*]' => '',
        'ARCHS[sdk=iphoneos*]' => '$(ARCHS_STANDARD_64_BIT)',
        'BUILD_LIBRARY_FOR_DISTRIBUTION' => 'YES',
        'OTHER_LDFLAGS'  => '$(inherited) -all_load -ObjC -l "stdc++"',
        'OTHER_CFLAGS' => '-I/IncdRecogKit/IncdRecogKit/IncdCereal/details/',
        'OTHER_CPLUSPLUSFLAGS' => '-I/IncdRecogKit/IncdRecogKit/IncdCereal/details/',
        'GCC_C_LANGUAGE_STANDARD' => 'gnu11',
        'CLANG_CXX_LANGUAGE_STANDARD' => 'gnu++17',
        'CLANG_CXX_LIBRARY' => 'libc++',
        'HEADER_SEARCH_PATHS' => '"IncdRecogKit/IncdRecogKit/IncdCereal" "IncdRecogKit/IncdRecogKit/IncdCereal/details" "IncdRecogKit/IncdRecogKit/IncdCereal/archives" "IncdRecogKit/IncdRecogKit/IncdCereal/external" "IncdRecogKit/IncdRecogKit/IncdCereal/types" "IncdRecogKit/IncdRecogKit/IncdCereal/details"' }

  s.private_header_files = 'IncdRecogKit/IncdRecogKit/cpp/**/*.hpp', 'IncdRecogKit/IncdRecogKit/IncdCereal/**/*.h', 'IncdRecogKit/IncdRecogKit/IncdCereal/*.h'
  s.public_header_files = 'IncdRecogKit/IncdRecogKit/Recognizer.h', 'IncdRecogKit/IncdRecogKit/BaseClass.h', 'IncdRecogKit/IncdRecogKit/ImageProcessingKit.h'
  s.ios.vendored_frameworks = 'IncdRecogKit/Frameworks/ncnn.framework', 'IncdRecogKit/Frameworks/opencv2.framework'
  #s.resources = 'IncdRecogKit/Frameworks/IncdCereal'
end
