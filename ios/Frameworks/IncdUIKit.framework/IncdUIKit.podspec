Pod::Spec.new do |spec|

  spec.name         = "IncdUIKit"
spec.version      = "1.0.18"
  spec.summary      = "UI kit for Incode products."
  spec.description  = <<-DESC
  Incode UIKit Framework for iOS
  It is used for Incode products.
                     DESC

  spec.homepage     = "https://github.com/IncodeTechnologies/"
  spec.license      = { :type => "BSD", :text => <<-LICENSE
      Copyright (c) 2018, Incode
      All rights reserved.

      Redistribution and use in source and binary forms, with or without
      modification, are permitted provided that the following conditions are met:

      * Redistributions of source code must retain the above copyright notice,
      this list of conditions and the following disclaimer.
      * Redistributions in binary form must reproduce the above copyright
      notice, this list of conditions and the following disclaimer in the
      documentation and/or other materials provided with the distribution.

      THIS SOFTWARE IS PROVIDED BY THE AUTHOR AND CONTRIBUTORS ``AS IS"" AND ANY
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


  spec.author          = { "Marko Čančar" => "marko.cancar@incode.com" }
  spec.platform        = :ios, "11.0"
  spec.swift_version   = '5.1.3'
  spec.pod_target_xcconfig = {
    'OTHER_LDFLAGS'  => '$(inherited) -ObjC -l "stdc++"',
    'BUILD_LIBRARY_FOR_DISTRIBUTION' => 'YES'
  }
  spec.source_files    = 'IncdUIKit/**/*.{swift,h}'
  spec.resources       = ['IncdUIKit/**/*.{xib}', 'IncdUIKit/IncdAsssets.xcassets']
  spec.source          = { :git => "https://github.com/IncodeTechnologies/IncdUIKit.git", :tag => "#{spec.version}" }

end
