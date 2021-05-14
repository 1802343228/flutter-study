class DataText {
  String _name;
  int _id;
  int _picId;
  int _img1v1Id;
  String _briefDesc;
  String _picUrl;
  String _img1v1Url;
  int _albumSize;
  String _trans;
  int _musicSize;
  int _topicPerson;

  dataText(
      {String name,
      int id,
      int picId,
      int img1v1Id,
      String briefDesc,
      String picUrl,
      String img1v1Url,
      int albumSize,
      String trans,
      int musicSize,
      int topicPerson}) {
    this._name = name;
    this._id = id;
    this._picId = picId;
    this._img1v1Id = img1v1Id;
    this._briefDesc = briefDesc;
    this._picUrl = picUrl;
    this._img1v1Url = img1v1Url;
    this._albumSize = albumSize;
    this._trans = trans;
    this._musicSize = musicSize;
    this._topicPerson = topicPerson;
  }

  String get $name => _name;
  set name(String name) => _name = name;
  int get $id => _id;
  set id(int id) => _id = id;
  int get $picId => _picId;
  set picId(int picId) => _picId = picId;
  int get $img1v1Id => _img1v1Id;
  set img1v1Id(int img1v1Id) => _img1v1Id = img1v1Id;
  String get $briefDesc => _briefDesc;
  set briefDesc(String briefDesc) => _briefDesc = briefDesc;
  String get $picUrl => _picUrl;
  set picUrl(String picUrl) => _picUrl = picUrl;
  String get $img1v1Url => _img1v1Url;
  set img1v1Url(String img1v1Url) => _img1v1Url = img1v1Url;
  int get $albumSize => _albumSize;
  set albumSize(int albumSize) => _albumSize = albumSize;
  String get $trans => _trans;
  set trans(String trans) => _trans = trans;
  int get $musicSize => _musicSize;
  set musicSize(int musicSize) => _musicSize = musicSize;
  int get $topicPerson => _topicPerson;
  set topicPerson(int topicPerson) => _topicPerson = topicPerson;

  DataText.fromJson(Map<String, dynamic> json) {
    _name = json['name'];
    _id = json['id'];
    _picId = json['picId'];
    _img1v1Id = json['img1v1Id'];
    _briefDesc = json['briefDesc'];
    _picUrl = json['picUrl'];
    _img1v1Url = json['img1v1Url'];
    _albumSize = json['albumSize'];
    _trans = json['trans'];
    _musicSize = json['musicSize'];
    _topicPerson = json['topicPerson'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this._name;
    data['id'] = this._id;
    data['picId'] = this._picId;
    data['img1v1Id'] = this._img1v1Id;
    data['briefDesc'] = this._briefDesc;
    data['picUrl'] = this._picUrl;
    data['img1v1Url'] = this._img1v1Url;
    data['albumSize'] = this._albumSize;
    data['trans'] = this._trans;
    data['musicSize'] = this._musicSize;
    data['topicPerson'] = this._topicPerson;
    return data;
  }
}
