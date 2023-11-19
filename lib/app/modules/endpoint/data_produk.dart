class Produk {
  String? nama;
  String? title;
  String? description;
  String? link;
  String? image;
  int? code;
  String? msg;

  Produk({this.nama, this.title, this.description, this.link, this.image});

  Produk.fromJson(Map<String, dynamic> json) {
    nama = json['nama'];
    title = json['title'];
    description = json['description'];
    link = json['link'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['nama'] = this.nama;
    data['title'] = this.title;
    data['description'] = this.description;
    data['link'] = this.link;
    data['image'] = this.image;
    return data;
  }
}