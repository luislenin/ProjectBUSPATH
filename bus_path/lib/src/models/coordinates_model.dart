// To parse this JSON data, do
//
//     final coordinates = coordinatesFromJson(jsonString);

import 'dart:convert';

Coordinates coordinatesFromJson(String str) => Coordinates.fromJson(json.decode(str));

String coordinatesToJson(Coordinates data) => json.encode(data.toJson());

class Coordinates {
    Coordinates({
        this.coordinates,
    });

    CoordinatesClass? coordinates;

    factory Coordinates.fromJson(Map<String, dynamic> json) => Coordinates(
        coordinates: CoordinatesClass.fromJson(json["coordinates"]),
    );

    Map<String, dynamic> toJson() => {
        "coordinates": coordinates!.toJson(),
    };
}

class CoordinatesClass {
    CoordinatesClass({
        this.latitude,
        this.longitude,
    });

    double? latitude;
    double? longitude;

    factory CoordinatesClass.fromJson(Map<String, dynamic> json) => CoordinatesClass(
        latitude: json["latitude"].toDouble(),
        longitude: json["longitude"].toDouble(),
    );

    Map<String, dynamic> toJson() => {
        "latitude": latitude,
        "longitude": longitude,
    };
}
