import '../index.dart';

///网络
const ACCESS_TOKEN = "access_token";
const BASE_URL_V3 = "https://gitee.com/api/v3/";
const BASE_URL_V5 = "https://gitee.com/";
const CLIENT_ID = "47c4bab7e3de5fee929d8d50f65721513476e7467aa7c30661810f53615fae28";
const CLIENT_SECRET = "0cff85e8decb0b93cd856952c85f41a1e8636040b7f4ffdea8788dbbe632421b";

///字体
const fontAliPuHui = 'aliPuHui';
const fontMaterialIcons = 'MaterialIcons'; //字体(内置)

///颜色
const colorNotifyTitle = Color(0xFF00415E);

///SharedPreference
const PREFS_PROFILE = 'profile';
const PREFS_SEARCH_HISTORY = 'search_history';

///UI Router
const page_main = 'page_main';
const page_login = 'page_login';
const page_theme = 'page_theme';
const page_language = 'page_language';

final routers = {
  page_main: (context) => MainRoute(),
  page_login: (context) => LoginRoute(),
  page_theme: (context) => ThemeChangeRoute(),
  page_language: (context) => LanguageRoute(),
};

///Hero 转场动画
const hero_tag_search = "tag_search";

///默认头像
const image_avatar_default = "static/image/avatar_default.png";

///码云首页顶部Tab Title
///const tab_title_home = <String>["推荐项目", "热门项目", "最近更新"];
enum TabTitleHome {
  Recommend,
  Popular,
  Recent,
}

extension TabTitleHomeExtension on TabTitleHome {
  //eg: Recommend
  String get name => describeEnum(this);

  List<String> get _titles => <String>["推荐项目", "热门项目", "最近更新"];

  String get title => _titles.elementAt(this.index);
}

//动态类型(可能是null) todo 2020年9月21日 类似Android ItemType 不同类型对应 不同样式的 ItemView
enum DynamicType {
  INSTANCE, //
  UNKNOWN,
  MemberEvent,
  IssueEvent,
  IssueCommentEvent,
  PullRequestEvent,
  PullRequestCommentEvent,
  PushEvent,
  ProjectCommentEvent,
}

extension DynamicTypeExtension on DynamicType {
  String get name => describeEnum(this);

  DynamicType getPrefix(String type) {
    if (type == null || type.isEmpty) return DynamicType.UNKNOWN;
    for(DynamicType e in DynamicType.values){
      if (e.toString() == '${e.runtimeType}.$type') {
        return e;
      }
    }
    // DynamicType.values.forEach((e) {
    //   //print("getPrefix ->  $type  ${e.toString()}  " + "${e.runtimeType}.$type");
    //   if (e.toString() == '${e.runtimeType}.$type') {
    //     print("equals -> ${e.toString() == '${e.runtimeType}.$type'}");
    //     return e;
    //   }
    // });
    return DynamicType.UNKNOWN;
  }
}
