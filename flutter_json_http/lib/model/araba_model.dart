class Araba {
  final String marka;
  final String ulke;
  final int kurulusYil;
  final List<Model> modeller;

  Araba({
    required this.marka,
    required this.ulke,
    required this.kurulusYil,
    required this.modeller,
  });

  factory Araba.fromJson(Map<String, dynamic> json) {
    return Araba(
      marka: json['marka'] as String,
      ulke: json['ulke'] as String,
      kurulusYil: json['kurulus_yil'] as int,
      modeller: (json['model'] as List)
          .map((modelJson) => Model.fromJson(modelJson))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'marka': marka,
      'ulke': ulke,
      'kurulus_yil': kurulusYil,
      'model': modeller.map((model) => model.toJson()).toList(),
    };
  }
}

class Model {
  final String modelAdi;
  final int fiyat;
  final bool benzinli;

  Model({
    required this.modelAdi,
    required this.fiyat,
    required this.benzinli,
  });

  factory Model.fromJson(Map<String, dynamic> json) {
    return Model(
      modelAdi: json['model_adi'] as String,
      fiyat: json['fiyat'] as int,
      benzinli: json['benzinli'] as bool,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'model_adi': modelAdi,
      'fiyat': fiyat,
      'benzinli': benzinli,
    };
  }
}
