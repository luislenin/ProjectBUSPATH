// To parse this JSON data, do
//
//     final paradas = paradasFromJson(jsonString);

import 'dart:convert';

List<Paradas> paradasFromJson(String str) => List<Paradas>.from(json.decode(str).map((x) => Paradas.fromJson(x)));

String paradasToJson(List<Paradas> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Paradas {
    Paradas({
        this.fieldsProto,
    });

    FieldsProto? fieldsProto;

    factory Paradas.fromJson(Map<String, dynamic> json) => Paradas(
        fieldsProto: FieldsProto.fromJson(json["_fieldsProto"]),
    );

    Map<String, dynamic> toJson() => {
        "_fieldsProto": fieldsProto!.toJson(),
    };
}

class FieldsProto {
    FieldsProto({
        this.nombrePdd,
        this.direccion1Pdd,
        this.terminalPdd,
        this.nomAnteriorPdd,
        this.nomSiguientePdd,
        this.direccion2Pdd,
        this.imagenUrlPdd,
        this.coordenadaPdd,
    });

    Pdd? nombrePdd;
    Pdd? direccion1Pdd;
    Pdd? terminalPdd;
    Pdd? nomAnteriorPdd;
    Pdd? nomSiguientePdd;
    Pdd? direccion2Pdd;
    Pdd? imagenUrlPdd;
    CoordenadaPdd? coordenadaPdd;

    factory FieldsProto.fromJson(Map<String, dynamic> json) => FieldsProto(
        nombrePdd: Pdd.fromJson(json["nombre_pdd"]),
        direccion1Pdd: Pdd.fromJson(json["direccion_1_pdd"]),
        terminalPdd: Pdd.fromJson(json["terminal_pdd"]),
        nomAnteriorPdd: Pdd.fromJson(json["nomAnterior_pdd"]),
        nomSiguientePdd: Pdd.fromJson(json["nomSiguiente_pdd"]),
        direccion2Pdd: Pdd.fromJson(json["direccion _2_pdd"]),
        imagenUrlPdd: Pdd.fromJson(json["imagen_url_pdd"]),
        coordenadaPdd: CoordenadaPdd.fromJson(json["coordenada_pdd"]),
    );

    Map<String, dynamic> toJson() => {
        "nombre_pdd": nombrePdd!.toJson(),
        "direccion_1_pdd": direccion1Pdd!.toJson(),
        "terminal_pdd": terminalPdd!.toJson(),
        "nomAnterior_pdd": nomAnteriorPdd!.toJson(),
        "nomSiguiente_pdd": nomSiguientePdd!.toJson(),
        "direccion _2_pdd": direccion2Pdd!.toJson(),
        "imagen_url_pdd": imagenUrlPdd!.toJson(),
        "coordenada_pdd": coordenadaPdd!.toJson(),
    };
}

class CoordenadaPdd {
    CoordenadaPdd({
        this.geoPointValue,
        this.valueType,
    });

    GeoPointValue? geoPointValue;
    String? valueType;

    factory CoordenadaPdd.fromJson(Map<String, dynamic> json) => CoordenadaPdd(
        geoPointValue: GeoPointValue.fromJson(json["geoPointValue"]),
        valueType: json["valueType"],
    );

    Map<String, dynamic> toJson() => {
        "geoPointValue": geoPointValue!.toJson(),
        "valueType": valueType,
    };
}

class GeoPointValue {
    GeoPointValue({
        this.latitude,
        this.longitude,
    });

    int? latitude;
    int? longitude;

    factory GeoPointValue.fromJson(Map<String, dynamic> json) => GeoPointValue(
        latitude: json["latitude"],
        longitude: json["longitude"],
    );

    Map<String, dynamic> toJson() => {
        "latitude": latitude,
        "longitude": longitude,
    };
}

class Pdd {
    Pdd({
        this.stringValue,
        this.valueType,
    });

    String? stringValue;
    String? valueType;

    factory Pdd.fromJson(Map<String, dynamic> json) => Pdd(
        stringValue: json["stringValue"],
        valueType: json["valueType"],
    );

    Map<String, dynamic> toJson() => {
        "stringValue": stringValue,
        "valueType": valueType,
    };
}
