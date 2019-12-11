#
#  Be sure to run `pod spec lint BaiduMapKit.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  s.name         = "BaiduTraceKit"
  s.version      = "3.1.1"
  s.summary      = "百度地图iOS 鹰眼轨迹SDK（CocoaPods百度地图官方库）"

  s.description  = <<-DESC
                   百度地图iOS 鹰眼轨迹SDK：百度地图官方CocoaPods.
                   百度地图iOS 鹰眼轨迹是一套基于iOS 8.0版本设备的应用程序接口， 您可以通过该接口实现轨迹追踪功能：
                   .轨迹追踪：按照设定的频率主动采集实时轨迹
                   .轨迹存储：云端实现海量轨迹数据存储
                   .轨迹查询：查询被追踪者实时位置、历史轨迹和里程
                   .轨迹纠偏：云端对轨迹进行实时去噪、绑路、抽稀处理，解决轨迹偏移问题
                   .地理围栏：当被追踪者进入一定范围（圆形、多边形、线型、行政区）的虚拟地理区域时，监控者可以接收到自动报警通知
                   .轨迹分析：对轨迹进行分析，分析内容包括：总里程、平均速度、最高速、最低速、超速点、停留点、急加速、急减速、急减速、急转弯等
                   DESC

  s.homepage     = "http://lbsyun.baidu.com/index.php?title=ios-yingyan/guide/introduction"
  # s.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"


  # ―――  Spec License  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Licensing your code is important. See http://choosealicense.com for more info.
  #  CocoaPods will detect a license file if there is a named LICENSE*
  #  Popular ones are 'MIT', 'BSD' and 'Apache License, Version 2.0'.
  #

  # s.license      = "MIT"
  #s.license      = {  :type => "Copyright", :text => "Copyright ©2015 Baidu" }
  s.license      = { :type => "MIT", :file => "LICENSE" }


  # ――― Author Metadata  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Specify the authors of the library, with email addresses. Email addresses
  #  of the authors are extracted from the SCM log. E.g. $ git log. CocoaPods also
  #  accepts just a name if you'd rather not provide an email address.
  #
  #  Specify a social_media_url where others can refer to, for example a twitter
  #  profile URL.
  #

  s.author             = { "baidu map sdk" => "dituapi_01@163.com" }
  # Or just: s.author    = ""
  # s.social_media_url   = "http://twitter.com/"

  # ――― Platform Specifics ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If this Pod runs only on iOS or OS X, then specify the platform and
  #  the deployment target. You can optionally include the target after the platform.
  #

  # s.platform     = :ios
  s.platform     = :ios, "8.0"

  #  When using multiple platforms
  # s.ios.deployment_target = "5.0"
  # s.osx.deployment_target = "10.7"
  # s.watchos.deployment_target = "2.0"

  # ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Specify the location from where the source should be retrieved.
  #  Supports git, hg, bzr, svn and HTTP.
  #

  s.source       = { :git => "https://github.com/BaiduLBS/BaiduTraceKit.git", :tag => s.version }


  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  CocoaPods is smart about how it includes source code. For source files
  #  giving a folder will include any swift, h, m, mm, c & cpp files.
  #  For header files it will include any header in the folder.
  #  Not including the public_header_files will make all headers public.
  #
  # s.source_files  = "BaiduMapKit/*.framework/Headers/*.h"  //framework 无需此项
  # s.exclude_files = "Classes/Exclude"

  # s.public_header_files = "BaiduMapKit/*.framework/Headers/*.h"


  # ――― Resources ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  A list of resources included with the Pod. These are copied into the
  #  target bundle with a build phase script. Anything else will be cleaned.
  #  You can preserve files from being cleaned, please don't preserve
  #  non-essential files like tests, examples and documentation.
  #

  # s.resource  = "icon.png"
  # s.resources = "BaiduTraceKit/*.framework/*.bundle"

  # s.preserve_paths = "FilesToSave", "MoreFilesToSave"


  # ――― Project Linking ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

  #  Link your library with frameworks, or libraries. Libraries do not include
  #  the lib prefix of their name.
  #

  s.vendored_frameworks = 'BaiduTraceKit/*.framework'
  # s.vendored_libraries = 'BaiduTraceKit/thirdlibs/*.a'
  s.frameworks = "CoreLocation", "SystemConfiguration", "Security", "CoreTelephony","MobileCoreServices"

  # s.library   = "iconv"
  s.libraries = "sqlite3.0", "c++", "z"


  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If your library depends on compiler flags you can set them in the xcconfig hash
  #  where they will only apply to your library. If you depend on other Podspecs
  #  you can include multiple dependencies to ensure it works.

  s.requires_arc = true

end
