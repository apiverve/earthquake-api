/// Response models for the Worldwide Earthquakes API.

/// API Response wrapper.
class EarthquakeResponse {
  final String status;
  final dynamic error;
  final EarthquakeData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  EarthquakeResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory EarthquakeResponse.fromJson(Map<String, dynamic> json) => EarthquakeResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? EarthquakeData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
  };
}

/// Response data for the Worldwide Earthquakes API.

class EarthquakeData {
  String? earthquakes_LastUpdated;
  num? earthquakes_LastHour;
  num? count24h;
  num? largestMagnitude24h;
  num? avgMagnitude24h;
  num? count7d;
  num? count30d;
  num? avgDailyCount30d;
  num? m45Count30d;
  num? largestMagnitude7d;
  num? largestMagnitude30d;
  String? largestPlace30d;
  num? largestTime30d;
  num? daysStored;
  String? period;
  num? count;
  List<EarthquakeDataEarthquakesItem>? earthquakes;
  List<EarthquakeDataDailyItem>? daily;

  EarthquakeData({
    this.earthquakes_LastUpdated,
    this.earthquakes_LastHour,
    this.count24h,
    this.largestMagnitude24h,
    this.avgMagnitude24h,
    this.count7d,
    this.count30d,
    this.avgDailyCount30d,
    this.m45Count30d,
    this.largestMagnitude7d,
    this.largestMagnitude30d,
    this.largestPlace30d,
    this.largestTime30d,
    this.daysStored,
    this.period,
    this.count,
    this.earthquakes,
    this.daily,
  });

  factory EarthquakeData.fromJson(Map<String, dynamic> json) => EarthquakeData(
      earthquakes_LastUpdated: json['earthquakes_LastUpdated'],
      earthquakes_LastHour: json['earthquakes_LastHour'],
      count24h: json['count24h'],
      largestMagnitude24h: json['largestMagnitude24h'],
      avgMagnitude24h: json['avgMagnitude24h'],
      count7d: json['count7d'],
      count30d: json['count30d'],
      avgDailyCount30d: json['avgDailyCount30d'],
      m45Count30d: json['m45Count30d'],
      largestMagnitude7d: json['largestMagnitude7d'],
      largestMagnitude30d: json['largestMagnitude30d'],
      largestPlace30d: json['largestPlace30d'],
      largestTime30d: json['largestTime30d'],
      daysStored: json['daysStored'],
      period: json['period'],
      count: json['count'],
      earthquakes: (json['earthquakes'] as List?)?.map((e) => EarthquakeDataEarthquakesItem.fromJson(e)).toList(),
      daily: (json['daily'] as List?)?.map((e) => EarthquakeDataDailyItem.fromJson(e)).toList(),
    );
}

class EarthquakeDataEarthquakesItem {
  num? mag;
  String? place;
  num? time;
  dynamic felt;
  dynamic cdi;
  dynamic mmi;
  dynamic alert;
  String? status;
  num? tsunami;
  num? sig;
  String? net;
  String? types;
  num? nst;
  num? dmin;
  num? rms;
  num? gap;
  String? magType;
  String? type;
  String? title;
  List<num>? coordinates;
  num? depthKm;
  String? id;
  String? url;
  num? distanceKm;

  EarthquakeDataEarthquakesItem({
    this.mag,
    this.place,
    this.time,
    this.felt,
    this.cdi,
    this.mmi,
    this.alert,
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
    this.depthKm,
    this.id,
    this.url,
    this.distanceKm,
  });

  factory EarthquakeDataEarthquakesItem.fromJson(Map<String, dynamic> json) => EarthquakeDataEarthquakesItem(
      mag: json['mag'],
      place: json['place'],
      time: json['time'],
      felt: json['felt'],
      cdi: json['cdi'],
      mmi: json['mmi'],
      alert: json['alert'],
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
      coordinates: (json['coordinates'] as List?)?.cast<num>(),
      depthKm: json['depthKm'],
      id: json['id'],
      url: json['url'],
      distanceKm: json['distanceKm'],
    );
}

class EarthquakeDataDailyItem {
  String? date;
  num? count;
  num? maxMagnitude;
  num? m45Count;

  EarthquakeDataDailyItem({
    this.date,
    this.count,
    this.maxMagnitude,
    this.m45Count,
  });

  factory EarthquakeDataDailyItem.fromJson(Map<String, dynamic> json) => EarthquakeDataDailyItem(
      date: json['date'],
      count: json['count'],
      maxMagnitude: json['maxMagnitude'],
      m45Count: json['m45Count'],
    );
}

class EarthquakeRequest {
  String? period;
  double? minMagnitude;
  double? lat;
  double? lon;
  double? radius;
  bool? daily;

  EarthquakeRequest({
    this.period,
    this.minMagnitude,
    this.lat,
    this.lon,
    this.radius,
    this.daily,
  });

  Map<String, dynamic> toJson() => {
      if (period != null) 'period': period,
      if (minMagnitude != null) 'minMagnitude': minMagnitude,
      if (lat != null) 'lat': lat,
      if (lon != null) 'lon': lon,
      if (radius != null) 'radius': radius,
      if (daily != null) 'daily': daily,
    };
}
