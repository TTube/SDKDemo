#
# Be sure to run `pod lib lint YFStockSDKDemo.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
    s.name             = 'YFStockSDKDemo'
    s.version          = '0.0.1'
    s.summary          = 'YYStockDemo'
    
    s.homepage         = 'https://github.com/TTube/SDKDemo'
    
    
    s.license      = {
        :type => "Copyright",
        :text => "Copyright (c) 2018 yff. All rights reserved.\n"
    }
    
    s.author           = { 'yff' => 'developer@yff.com' }
    s.source           = { :git => 'https://github.com/TTube/SDKDemo.git', :tag => "#{s.version}" }
    
    
    s.platform     = :ios, "8.0"
    
    # framework & resource
    s.resource = 'YFStock/StockResource.bundle'
    s.vendored_frameworks = 'YFStock/*.framework'
    s.frameworks = 'UIKit', 'Foundation'
    
    # dependency
    s.dependency 'AFNetworking'
    s.dependency 'Masonry'
    s.dependency 'MJExtension'
    s.dependency 'MJRefresh'
    s.dependency 'CocoaLumberjack'
    s.dependency 'SSZipArchive'
    
end
