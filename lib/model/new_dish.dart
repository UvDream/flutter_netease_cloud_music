class NewDishMOdel {
  int total;
  List<Albums> albums;
  int code;

  NewDishMOdel({this.total, this.albums, this.code});

  NewDishMOdel.fromJson(Map<String, dynamic> json) {
    total = json['total'];
    if (json['albums'] != null) {
      albums = new List<Albums>();
      json['albums'].forEach((v) {
        albums.add(new Albums.fromJson(v));
      });
    }
    code = json['code'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['total'] = this.total;
    if (this.albums != null) {
      data['albums'] = this.albums.map((v) => v.toJson()).toList();
    }
    data['code'] = this.code;
    return data;
  }
}

class Albums {
  List<Null> songs;
  bool paid;
  bool onSale;
  int mark;
  int status;
  String picUrl;
  String company;
  String subType;
  String description;
  String tags;
  List<Artists> artists;
  String briefDesc;
  int publishTime;
  String commentThreadId;
  int copyrightId;
  List<Null> alias;
  int picId;
  Artist artist;
  String blurPicUrl;
  int companyId;
  int pic;
  String name;
  int id;
  String type;
  int size;
  String picIdStr;

  Albums(
      {this.songs,
      this.paid,
      this.onSale,
      this.mark,
      this.status,
      this.picUrl,
      this.company,
      this.subType,
      this.description,
      this.tags,
      this.artists,
      this.briefDesc,
      this.publishTime,
      this.commentThreadId,
      this.copyrightId,
      this.alias,
      this.picId,
      this.artist,
      this.blurPicUrl,
      this.companyId,
      this.pic,
      this.name,
      this.id,
      this.type,
      this.size,
      this.picIdStr});

  Albums.fromJson(Map<String, dynamic> json) {
    if (json['songs'] != null) {
      songs = new List<Null>();
      json['songs'].forEach((v) {
        songs.add(new Null.fromJson(v));
      });
    }
    paid = json['paid'];
    onSale = json['onSale'];
    mark = json['mark'];
    status = json['status'];
    picUrl = json['picUrl'];
    company = json['company'];
    subType = json['subType'];
    description = json['description'];
    tags = json['tags'];
    if (json['artists'] != null) {
      artists = new List<Artists>();
      json['artists'].forEach((v) {
        artists.add(new Artists.fromJson(v));
      });
    }
    briefDesc = json['briefDesc'];
    publishTime = json['publishTime'];
    commentThreadId = json['commentThreadId'];
    copyrightId = json['copyrightId'];
    if (json['alias'] != null) {
      alias = new List<Null>();
      json['alias'].forEach((v) {
        alias.add(new Null.fromJson(v));
      });
    }
    picId = json['picId'];
    artist =
        json['artist'] != null ? new Artist.fromJson(json['artist']) : null;
    blurPicUrl = json['blurPicUrl'];
    companyId = json['companyId'];
    pic = json['pic'];
    name = json['name'];
    id = json['id'];
    type = json['type'];
    size = json['size'];
    picIdStr = json['picId_str'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.songs != null) {
      data['songs'] = this.songs.map((v) => v.toJson()).toList();
    }
    data['paid'] = this.paid;
    data['onSale'] = this.onSale;
    data['mark'] = this.mark;
    data['status'] = this.status;
    data['picUrl'] = this.picUrl;
    data['company'] = this.company;
    data['subType'] = this.subType;
    data['description'] = this.description;
    data['tags'] = this.tags;
    if (this.artists != null) {
      data['artists'] = this.artists.map((v) => v.toJson()).toList();
    }
    data['briefDesc'] = this.briefDesc;
    data['publishTime'] = this.publishTime;
    data['commentThreadId'] = this.commentThreadId;
    data['copyrightId'] = this.copyrightId;
    if (this.alias != null) {
      data['alias'] = this.alias.map((v) => v.toJson()).toList();
    }
    data['picId'] = this.picId;
    if (this.artist != null) {
      data['artist'] = this.artist.toJson();
    }
    data['blurPicUrl'] = this.blurPicUrl;
    data['companyId'] = this.companyId;
    data['pic'] = this.pic;
    data['name'] = this.name;
    data['id'] = this.id;
    data['type'] = this.type;
    data['size'] = this.size;
    data['picId_str'] = this.picIdStr;
    return data;
  }
}

class Artists {
  int img1v1Id;
  int topicPerson;
  String trans;
  String picUrl;
  bool followed;
  String img1v1Url;
  String briefDesc;
  int musicSize;
  List<Null> alias;
  int albumSize;
  int picId;
  String name;
  int id;
  String img1v1IdStr;

  Artists(
      {this.img1v1Id,
      this.topicPerson,
      this.trans,
      this.picUrl,
      this.followed,
      this.img1v1Url,
      this.briefDesc,
      this.musicSize,
      this.alias,
      this.albumSize,
      this.picId,
      this.name,
      this.id,
      this.img1v1IdStr});

  Artists.fromJson(Map<String, dynamic> json) {
    img1v1Id = json['img1v1Id'];
    topicPerson = json['topicPerson'];
    trans = json['trans'];
    picUrl = json['picUrl'];
    followed = json['followed'];
    img1v1Url = json['img1v1Url'];
    briefDesc = json['briefDesc'];
    musicSize = json['musicSize'];
    if (json['alias'] != null) {
      alias = new List<Null>();
      json['alias'].forEach((v) {
        alias.add(new Null.fromJson(v));
      });
    }
    albumSize = json['albumSize'];
    picId = json['picId'];
    name = json['name'];
    id = json['id'];
    img1v1IdStr = json['img1v1Id_str'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['img1v1Id'] = this.img1v1Id;
    data['topicPerson'] = this.topicPerson;
    data['trans'] = this.trans;
    data['picUrl'] = this.picUrl;
    data['followed'] = this.followed;
    data['img1v1Url'] = this.img1v1Url;
    data['briefDesc'] = this.briefDesc;
    data['musicSize'] = this.musicSize;
    if (this.alias != null) {
      data['alias'] = this.alias.map((v) => v.toJson()).toList();
    }
    data['albumSize'] = this.albumSize;
    data['picId'] = this.picId;
    data['name'] = this.name;
    data['id'] = this.id;
    data['img1v1Id_str'] = this.img1v1IdStr;
    return data;
  }
}

class Artist {
  int img1v1Id;
  int topicPerson;
  String trans;
  String picUrl;
  bool followed;
  String img1v1Url;
  String briefDesc;
  int musicSize;
  List<String> alias;
  int albumSize;
  int picId;
  String name;
  int id;
  String picIdStr;
  String img1v1IdStr;

  Artist(
      {this.img1v1Id,
      this.topicPerson,
      this.trans,
      this.picUrl,
      this.followed,
      this.img1v1Url,
      this.briefDesc,
      this.musicSize,
      this.alias,
      this.albumSize,
      this.picId,
      this.name,
      this.id,
      this.picIdStr,
      this.img1v1IdStr});

  Artist.fromJson(Map<String, dynamic> json) {
    img1v1Id = json['img1v1Id'];
    topicPerson = json['topicPerson'];
    trans = json['trans'];
    picUrl = json['picUrl'];
    followed = json['followed'];
    img1v1Url = json['img1v1Url'];
    briefDesc = json['briefDesc'];
    musicSize = json['musicSize'];
    alias = json['alias'].cast<String>();
    albumSize = json['albumSize'];
    picId = json['picId'];
    name = json['name'];
    id = json['id'];
    picIdStr = json['picId_str'];
    img1v1IdStr = json['img1v1Id_str'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['img1v1Id'] = this.img1v1Id;
    data['topicPerson'] = this.topicPerson;
    data['trans'] = this.trans;
    data['picUrl'] = this.picUrl;
    data['followed'] = this.followed;
    data['img1v1Url'] = this.img1v1Url;
    data['briefDesc'] = this.briefDesc;
    data['musicSize'] = this.musicSize;
    data['alias'] = this.alias;
    data['albumSize'] = this.albumSize;
    data['picId'] = this.picId;
    data['name'] = this.name;
    data['id'] = this.id;
    data['picId_str'] = this.picIdStr;
    data['img1v1Id_str'] = this.img1v1IdStr;
    return data;
  }
}
