class PessoaModel {
  String? name;
  String? ocupation;
  String? photo;

  PessoaModel({this.name, this.ocupation, this.photo});

  PessoaModel.fromJson(Map<String, dynamic> json) {
    /* este json se refere ao nome do 'JSON' */
    name = json['name'];
    ocupation = json['ocupation'];
    photo = json['photo'];
  }
}
