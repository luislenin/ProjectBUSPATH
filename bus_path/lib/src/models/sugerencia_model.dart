import 'dart:convert';

Sugerencia sugerenciaFromJson(String str) => Sugerencia.fromJson(json.decode(str));

String sugerenciaToJson(Sugerencia data) => json.encode(data.toJson());

class Sugerencia {
    Sugerencia({
        this.usuario,
        this.opinion,
    });

    String? usuario;
    String? opinion;

    factory Sugerencia.fromJson(Map<String, dynamic> json) => Sugerencia(
        usuario: json["usuario"],
        opinion: json["opinion"],
    );

    Map<String, dynamic> toJson() => {
        "usuario": usuario,
        "opinion": opinion,
    };
}
