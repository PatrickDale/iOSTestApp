workspace 'testApp'
project 'testApp.xcodeproj'
platform :ios, '9.2'

use_frameworks!

def testing_pods
  pod 'Quick', '~> 0.9.2'
  pod 'Nimble', '~> 4.0.1'
  pod 'OHHTTPStubs'
  pod 'OHHTTPStubs/Swift'
end

pod 'Alamofire'
pod 'SwiftyJSON'
pod 'ReactiveCocoa'

target 'testApp' do
end

target 'testAppTests' do
  testing_pods
end
