/// Response models for the Worldwide Earthquakes API.

/// API Response wrapper.
class EarthquakeResponse {
  final String status;
  final dynamic error;
  final EarthquakeData? data;

  EarthquakeResponse({
    required this.status,
    this.error,
    this.data,
  });

  factory EarthquakeResponse.fromJson(Map<String, dynamic> json) => EarthquakeResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? EarthquakeData.fromJson(json['data']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
  };
}

/// Response data for the Worldwide Earthquakes API.

class EarthquakeData {
  int? earthquakes_LastUpdated;
  int? earthquakes_LastHour;
  List<EarthquakeDataEarthquakesItem>? earthquakes;

  EarthquakeData({
    this.earthquakes_LastUpdated,
    this.earthquakes_LastHour,
    this.earthquakes,
  });

  factory EarthquakeData.fromJson(Map<String, dynamic> json) => EarthquakeData(
      earthquakes_LastUpdated: json['earthquakes_LastUpdated'],
      earthquakes_LastHour: json['earthquakes_LastHour'],
      earthquakes: (json['earthquakes'] as List?)?.map((e) => EarthquakeDataEarthquakesItem.fromJson(e)).toList(),
    );
}

class EarthquakeDataEarthquakesItem {
  double? mag;
  String? place;
  int? time;
  String? status;
  int? tsunami;
  int? sig;
  String? net;
  String? types;
  int? nst;
  double? dmin;
  double? rms;
  int? gap;
  String? magType;
  String? type;
  String? title;
  List<double>? coordinates;

  EarthquakeDataEarthquakesItem({
    this.mag,
    this.place,
    this.time,
    this.status,
    this.tsunami,
    this.sig,
    this.net,
    this.types,
    this.nst,
    this.dmin,
    this.rms,
    this.gap,
    this.magType,
    this.type,
    this.title,
    this.coordinates,
  });

  factory EarthquakeDataEarthquakesItem.fromJson(Map<String, dynamic> json) => EarthquakeDataEarthquakesItem(
      mag: json['mag'],
      place: json['place'],
      time: json['time'],
      status: json['status'],
      tsunami: json['tsunami'],
      sig: json['sig'],
      net: json['net'],
      types: json['types'],
      nst: json['nst'],
      dmin: json['dmin'],
      rms: json['rms'],
      gap: json['gap'],
      magType: json['magType'],
      type: json['type'],
      title: json['title'],
      coordinates: (json['coordinates'] as List?)?.cast<double>(),
    );
}
