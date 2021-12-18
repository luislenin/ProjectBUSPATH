// To parse this JSON data, do
//
//     final cities = citiesFromJson(jsonString);

import 'dart:convert';

import 'package:bus_path/src/models/coordinates_model.dart';
import 'package:bus_path/src/models/country_model.dart';


List<Cities> citiesFromJson(String str) => List<Cities>.from(json.decode(str).map((x) => Cities.fromJson(x)));

String citiesToJson(List<Cities> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Cities {
    Cities({
        this.id,
        this.uuid,
        this.name,
        this.coordinates,
        this.country,
        this.classes,
        this.stations,
        this.pairs,
        this.slugs,
        this.hasTrainStation,
    });

    int? id;
    String? uuid;
    String? name;
    Coordinates? coordinates;
    Country? country;
    String? classes;
    List<int>? stations;
    List<int>? pairs;
    String? slugs;
    bool? hasTrainStation;

    factory Cities.fromJson(Map<String, dynamic> json) => Cities(
        id: json["id"],
        uuid: json["uuid"],
        name: json["name"],
        coordinates: Coordinates.fromJson(json["coordinates"]),
        country: Country.fromJson(json["country"]),
        classes: json["classes"],
        stations: List<int>.from(json["stations"].map((x) => x)),
        pairs: List<int>.from(json["pairs"].map((x) => x)),
        slugs: json["slugs"],
        hasTrainStation: json["has_train_station"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "uuid": uuid,
        "name": name,
        "coordinates": coordinates!.toJson(),
        "country": country!.toJson(),
        "classes": classes,
        "stations": List<dynamic>.from(stations!.map((x) => x)),
        "pairs": List<dynamic>.from(pairs!.map((x) => x)),
        "slugs": slugs,
        "has_train_station": hasTrainStation,
    };
}

