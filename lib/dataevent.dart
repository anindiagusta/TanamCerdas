class cData {
  String ctitle;
  String cthumb;
  String cauthor;
  String ctag;
  String ctime;
  String cdesc;
  String ckey;

  cData(
      {required this.ctitle,
      required this.cthumb,
      required this.cauthor,
      required this.ctag,
      required this.ctime,
      required this.cdesc,
      required this.ckey,
      });

  factory cData.fromJson(Map<String, dynamic> json) {
    return cData(
        ctitle: json['title'],
        cthumb: json['thumb'],
        cauthor: json['author'],
        ctag: json['tag'],
        ctime: json['time'],
        cdesc: json['desc'],
        ckey: json['key']
    );
  }
}
