
import 'dart:convert';

import 'package:bus_path/src/models/sugerencia_model.dart';

Bus busFromJson(String str) => Bus.fromJson(json.decode(str));

String busToJson(Bus data) => json.encode(data.toJson());

class Bus {
    Bus({
        this.bus,
        this.compania,
        this.capacidad,
        this.unidad,
        this.sugerencia,
    });

    String? bus;
    String? compania;
    int? capacidad;
    String? unidad;
    Sugerencia? sugerencia;

    factory Bus.fromJson(Map<String, dynamic> json) => Bus(
        bus: json["bus"],
        compania: json["compania"],
        capacidad: json["capacidad"],
        unidad: json["unidad"],
        sugerencia: Sugerencia.fromJson(json["sugerencia"]),
    );

    Map<String, dynamic> toJson() => {
        "bus": bus,
        "compania": compania,
        "capacidad": capacidad,
        "unidad": unidad,
        "sugerencia": sugerencia!.toJson(),
    };
}

