Pod::Spec.new do |s|

  s.name         = "IncdUtils"
  s.version      = "0.9.42"
  s.summary      = "Incode Utils Framework"
  s.description  = <<-DESC
  Incode Utils Framework for iOS
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
  s.platform 		   = :ios, "9.0"
  s.swift_version  = '5.0'
  s.pod_target_xcconfig = {
        'OTHER_LDFLAGS'  => '$(inherited) -all_load -ObjC -l "stdc++"',
        'BUILD_LIBRARY_FOR_DISTRIBUTION' => 'YES'
  }
  s.source_files       = 'IncdUtils/IncdUtils/*.{swift,h}', 'IncdUtils/IncdUtils/FaceTracking/*.{swift,h}'
  s.source       	   = { :git => "https://github.com/IncodeTechnologies/IncdUtils.git", :tag => "#{s.version}" }

end
