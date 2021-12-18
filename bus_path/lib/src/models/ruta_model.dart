
import 'dart:convert';

Ruta rutaFromJson(String str) => Ruta.fromJson(json.decode(str));

String rutaToJson(Ruta data) => json.encode(data.toJson());

class Ruta {
    Ruta({
        this.rutaid,
        this.origen,
        this.destino,
        this.tarifa,
    });

    String? rutaid;
    String? origen;
    String? destino;
    String? tarifa;

    factory Ruta.fromJson(Map<String, dynamic> json) => Ruta(
        rutaid: json["rutaid"],
        origen: json["origen"],
        destino: json["destino"],
        tarifa: json["tarifa"],
    );

    Map<String, dynamic> toJson() => {
        "rutaid": rutaid,
        "origen": origen,
        "destino": destino,
        "tarifa": tarifa,
    };
}
