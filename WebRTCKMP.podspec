Pod::Spec.new do |spec|
    spec.name                       = 'WebRTCKMP'
    spec.version                    = '0.100.2'
    spec.homepage                   = 'https://github.com/shepeliev/webrtc-kmp'
    spec.source                     = { :http => "http://localhost:8887/WebRTC.xcframework.tgz", :flatten => false }
    spec.authors                    = 'https://github.com/shepeliev/webrtc-kmp/graphs/contributors'
    spec.license                    = 'Apache License 2.0'
    spec.summary                    = 'WebRTC for Kotlin Multi Platform'
    spec.platforms                  = { :ios => '9.0' }
#     spec.public_header_files        = 'ios/WebRTCKMP/*.h'
#     spec.source_files               = 'ios/WebRTCKMP/*.{h,m}'
#     spec.ios.vendored_frameworks    = 'vendor/apple/WebRTC.xcframework/ios-arm64/WebRTC.framework'
#     spec.public_header_files        = 'vendor/apple/WebRTC.xcframework/ios-arm64_x86_64-simulator/WebRTC.framework/Headers/*.h'
#     spec.vendored_frameworks    = 'vendor/apple/WebRTC.xcframework/ios-arm64_x86_64-simulator/WebRTC.framework'
    spec.vendored_frameworks  = 'WebRTC.xcframework'
#     spec.preserve_path              = 'vendor/apple/*.xcframework'

    spec.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
    spec.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
end
