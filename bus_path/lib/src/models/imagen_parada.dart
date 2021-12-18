
import 'dart:convert';

ImagenParada imagenParadaFromJson(String str) => ImagenParada.fromJson(json.decode(str));

String imagenParadaToJson(ImagenParada data) => json.encode(data.toJson());

class ImagenParada {
    ImagenParada({
        this.nombre,
        this.descripcion,
        this.url,
    });

    String? nombre;
    String? descripcion;
    String? url;

    factory ImagenParada.fromJson(Map<String, dynamic> json) => ImagenParada(
        nombre: json["nombre"],
        descripcion: json["descripcion"],
        url: json["URL"],
    );

    Map<String, dynamic> toJson() => {
        "nombre": nombre,
        "descripcion": descripcion,
        "URL": url,
    };
}
