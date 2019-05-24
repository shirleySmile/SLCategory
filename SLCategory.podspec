#
# Be sure to run `pod lib lint SLCategory.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
    s.name             = 'SLCategory'
    s.version          = '0.1.0'
    s.summary          = 'this is SL organize categroy.'
    
    # This description is used to generate tags and improve search results.
    #   * Think: What does it do? Why did you write it? What is the focus?
    #   * Try to keep it short, snappy and to the point.
    #   * Write the description between the DESC delimiters below.
    #   * Finally, don't worry about the indent, CocoaPods strips it!
    
    s.description      = <<-DESC
    0.0.1   Initial commit of library
    0.0.2   add other more categroy
    0.0.3   modify textView_placeholder
    0.0.4   modify method type
    0.0.5   delete get currentController categroy
    0.0.6   modify textView+placeholder
    0.0.7   Add navigationController+refresh
    0.0.8   modify textView+placeholder
    0.0.9   Modify emoji judge
    0.0.10   update file
    0.1.0  transfer pod
    DESC
    
    s.homepage         = 'https://github.com/shirleySmile/SLCategory'
    # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
    s.license          = { :type => 'MIT', :file => 'LICENSE' }
    s.author           = { 'shirley' => '276482207@qq.com' }
    s.source           = { :git => 'https://github.com/shirleySmile/SLCategory.git', :tag => s.version.to_s }
    # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
    
    s.ios.deployment_target = '8.0'
    
    s.source_files = 'SLCategory/Classes/**/*'
    
    # s.resource_bundles = {
    #   'SLCategory' => ['SLCategory/Assets/*.png']
    # }
    
    # s.public_header_files = 'Pod/Classes/**/*.h'
    # s.frameworks = 'UIKit', 'MapKit'
    # s.dependency 'AFNetworking', '~> 2.3'
end
