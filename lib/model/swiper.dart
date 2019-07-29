class FindSwiperModel {
  List<Banners> banners;
  int code;

  FindSwiperModel({this.banners, this.code});

  FindSwiperModel.fromJson(Map<String, dynamic> json) {
    if (json['banners'] != null) {
      banners = new List<Banners>();
      json['banners'].forEach((v) {
        banners.add(new Banners.fromJson(v));
      });
    }
    code = json['code'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.banners != null) {
      data['banners'] = this.banners.map((v) => v.toJson()).toList();
    }
    data['code'] = this.code;
    return data;
  }
}

class Banners {
  String imageUrl;
  int targetId;
  Null adid;
  int targetType;
  String titleColor;
  String typeTitle;
  String url;
  bool exclusive;
  Null monitorImpress;
  Null monitorClick;
  Null monitorType;
  Null monitorImpressList;
  Null monitorClickList;
  Null monitorBlackList;
  Null extMonitor;
  Null extMonitorInfo;
  Null adSource;
  Null adLocation;
  String encodeId;
  Null program;
  Null event;
  Null video;
  Null song;
  String scm;

  Banners(
      {this.imageUrl,
      this.targetId,
      this.adid,
      this.targetType,
      this.titleColor,
      this.typeTitle,
      this.url,
      this.exclusive,
      this.monitorImpress,
      this.monitorClick,
      this.monitorType,
      this.monitorImpressList,
      this.monitorClickList,
      this.monitorBlackList,
      this.extMonitor,
      this.extMonitorInfo,
      this.adSource,
      this.adLocation,
      this.encodeId,
      this.program,
      this.event,
      this.video,
      this.song,
      this.scm});

  Banners.fromJson(Map<String, dynamic> json) {
    imageUrl = json['imageUrl'];
    targetId = json['targetId'];
    adid = json['adid'];
    targetType = json['targetType'];
    titleColor = json['titleColor'];
    typeTitle = json['typeTitle'];
    url = json['url'];
    exclusive = json['exclusive'];
    monitorImpress = json['monitorImpress'];
    monitorClick = json['monitorClick'];
    monitorType = json['monitorType'];
    monitorImpressList = json['monitorImpressList'];
    monitorClickList = json['monitorClickList'];
    monitorBlackList = json['monitorBlackList'];
    extMonitor = json['extMonitor'];
    extMonitorInfo = json['extMonitorInfo'];
    adSource = json['adSource'];
    adLocation = json['adLocation'];
    encodeId = json['encodeId'];
    program = json['program'];
    event = json['event'];
    video = json['video'];
    song = json['song'];
    scm = json['scm'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['imageUrl'] = this.imageUrl;
    data['targetId'] = this.targetId;
    data['adid'] = this.adid;
    data['targetType'] = this.targetType;
    data['titleColor'] = this.titleColor;
    data['typeTitle'] = this.typeTitle;
    data['url'] = this.url;
    data['exclusive'] = this.exclusive;
    data['monitorImpress'] = this.monitorImpress;
    data['monitorClick'] = this.monitorClick;
    data['monitorType'] = this.monitorType;
    data['monitorImpressList'] = this.monitorImpressList;
    data['monitorClickList'] = this.monitorClickList;
    data['monitorBlackList'] = this.monitorBlackList;
    data['extMonitor'] = this.extMonitor;
    data['extMonitorInfo'] = this.extMonitorInfo;
    data['adSource'] = this.adSource;
    data['adLocation'] = this.adLocation;
    data['encodeId'] = this.encodeId;
    data['program'] = this.program;
    data['event'] = this.event;
    data['video'] = this.video;
    data['song'] = this.song;
    data['scm'] = this.scm;
    return data;
  }
}
