class Produk {
  String? nama;
  String? title;
  String? description;
  String? link;
  String? image;
  int? code; // Tambahkan atribut code
  String? msg; // Tambahkan atribut msg

  Produk({this.nama, this.title, this.description, this.link, this.image, this.code, this.msg});

  Produk.fromJson(Map<String, dynamic> json) {
    nama = json['nama'];
    title = json['title'];
    description = json['description'];
    link = json['link'];
    image = json['image'];
    code = json['code']; // Tambahkan inisialisasi untuk atribut code
    msg = json['msg']; // Tambahkan inisialisasi untuk atribut msg
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['nama'] = this.nama;
    data['title'] = this.title;
    data['description'] = this.description;
    data['link'] = this.link;
    data['image'] = this.image;
    data['code'] = this.code; // Tambahkan konversi untuk atribut code
    data['msg'] = this.msg; // Tambahkan konversi untuk atribut msg
    return data;
  }
}
