# BaiduTraceKit

百度地图 iOS 鹰眼SDK(官方)

--------------------------------------------------------------------------------------

鹰眼轨迹是一套基于iOS 8.0版本设备的应用程序接口， 您可以通过该接口实现轨迹追踪功能：

.轨迹追踪：按照设定的频率主动采集实时轨迹

.轨迹存储：云端实现海量轨迹数据存储

.轨迹查询：查询被追踪者实时位置、历史轨迹和里程

.轨迹纠偏：云端对轨迹进行实时去噪、绑路、抽稀处理，解决轨迹偏移问题

.地理围栏：当被追踪者进入一定范围（圆形、多边形、线型、行政区）的虚拟地理区域时，监控者可以接收到自动报警通知

.轨迹分析：对轨迹进行分析，分析内容包括：总里程、平均速度、最高速、最低速、超速点、停留点、急加速、急减速、急减速、急转弯等

提示：使用任何鹰眼轨迹接口前，必须先在轨迹管理台中创建鹰眼工程，获得servie_id后方可正式使用鹰眼轨迹。

-----------------------------------------------------------------------------

V3.1.1

新增功能：

开始支持在前台定位权限下使用，但App集成鹰眼SDK的最佳实践仍然是申请后台定位权限，后台定位的作用是保证应用退到后台时，仍然能持续获得轨迹，最大限度减少被系统杀死的概率。关于定位权限的配置，请参考开发指南中 http://lbsyun.baidu.com/index.php?title=ios-yingyan/guide/buildproject 配置工程说明。此版SDK具体新增内容为：

BTKTraceDelegate 中新增 -(void)onRequestAlwaysLocationAuthorization:(CLLocationManager *) locationManager; 回调函数，当鹰眼SDK需要申请后台定位权限时，会回调此方法，开发者可以这样实现此回调函数：

- (void)onRequestAlwaysLocationAuthorization:(CLLocationManager *)locationManager {

[locationManager requestAlwaysAuthorization];

}

这样做的原因是：AppStore加强了定位权限的审核要求，如果App在plist文件中没有后台定位权限相关的配置，那么不能出现申请后台定位的代码。因此不需要后台定位的App就不需要实现此回调函数，可以通过上架审核。

在onStartService回调的errorCode中新增BTK_START_SERVICE_SUCCESS_BUT_NO_AUTH_TO_KEEP_ALIVE 状态码，如果将keepAlive设置为true后调用startService时，还没有定位权限，则回调此状态码，代表轨迹服务开启成功，但是由于没有定位权限，无法实现保活，回调此状态码的同时，鹰眼SDK会根据用户选择的权限向系统申请对应的权限，如果用户选择的是前台或后台定位权限，那么在下一次开启轨迹服务时即可成功保活。
