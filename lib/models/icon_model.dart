int counter = 1;
class IconItem {
  int rank;
  String pkId;
  String upPkId;
  String downPkId;
  String name;
  String image;
  String moduleId;
  String moduleName;
  int status;
  int type;
  String url;
  String routerSchema;

  IconItem.fromMap(Map<String, dynamic> json) {
    this.rank = counter++;
    this.pkId = json["pkId"];
    this.upPkId = json["upPkId"];
    this.downPkId = json["downPkId"];
    this.name = json["name"];
    this.image = json["image"];
    this.moduleId = json["moduleId"];
    this.moduleName = json["moduleName"];
    this.status = json["status"];
    this.type = json["type"];
    this.url = json["url"];
    this.routerSchema = json["routerSchema"];
  }
}