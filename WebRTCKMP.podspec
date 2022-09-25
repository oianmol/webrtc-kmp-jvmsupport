Pod::Spec.new do |spec|
    spec.name                       = 'WebRTCKMP'
    spec.version                    = '0.100.2'
    spec.homepage                   = 'https://github.com/shepeliev/webrtc-kmp'
    spec.source                     = { :http => 'http://localhost:8887/WebRTC.xcframework.zip' }
    spec.authors                    = 'https://github.com/shepeliev/webrtc-kmp/graphs/contributors'
    spec.license                    = 'Apache License 2.0'
    spec.summary                    = 'WebRTC for Kotlin Multi Platform'
    spec.platforms                  = { :ios => '9.0' }
    spec.ios.vendored_frameworks    = 'WebRTC.xcframework'
    spec.source_files               = 'ios/src/*.h'
    spec.public_header_files        = 'ios/src/*.h'

    spec.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
    spec.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
end
