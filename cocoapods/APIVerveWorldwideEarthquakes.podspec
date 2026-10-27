Pod::Spec.new do |s|
  s.name             = 'APIVerveWorldwideEarthquakes'
  s.version          = '1.2.3'
  s.summary          = 'Worldwide Earthquakes tracks global seismic activity recorded over the past hour.'
  s.description      = <<-'DESC'
Worldwide Earthquakes tracks global seismic activity recorded over the past hour. It delivers magnitudes, epicenter coordinates and depth, location names, tsunami warning flags, USGS event links and 24-hour activity summaries sourced from the USGS. Filter by minimum magnitude, and on paid plans list the past 24 hours or search within a radius of any point.

This iOS/macOS SDK provides a convenient way to access the Worldwide Earthquakes from APIVerve.
Supports both callback-based and async/await patterns.
                       DESC

  s.homepage         = 'https://apiverve.com/marketplace/earthquake?utm_source=cocoapods&utm_medium=referral&utm_content=homepage'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'APIVerve' => 'hello@apiverve.com' }
  # The SDK repo holds every language; the pod lives under cocoapods/ with its own tag.
  s.source           = { :git => 'https://github.com/apiverve/earthquake-api.git', :tag => "cocoapods/v#{s.version}" }

  s.ios.deployment_target = '15.0'
  s.osx.deployment_target = '12.0'

  s.swift_version = '5.0'

  s.source_files = 'cocoapods/Sources/APIVerveWorldwideEarthquakes/**/*.swift'

  s.frameworks = 'Foundation'

  # APIResponse, APIVerveError and the request plumbing, shared by every APIVerve pod.
  s.dependency 'APIVerveCore', '~> 1.2'
end
