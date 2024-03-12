/// city : "Kano"
/// lat : "12.0000"
/// lng : "8.5167"
/// country : "Nigeria"
/// iso2 : "NG"
/// admin_name : "Kano"
/// capital : "admin"
/// population : "3848885"
/// population_proper : "3848885"

class City {
  City({
    String? city,
    String? lat,
    String? lng,
    String? country,
    String? iso2,
    String? adminName,
    String? capital,
    String? population,
    String? populationProper,
  }) {
    _city = city;
    _latitude = lat;
    _longitude = lng;
    _country = country;
    _iso2 = iso2;
    _adminName = adminName;
    _capital = capital;
    _population = population;
    _populationProper = populationProper;
  }

  City.fromJson(dynamic json) {
    _city = json['city'];
    _latitude = json['lat'];
    _longitude = json['lng'];
    _country = json['country'];
    _iso2 = json['iso2'];
    _adminName = json['admin_name'];
    _capital = json['capital'];
    _population = json['population'];
    _populationProper = json['population_proper'];
  }
  String? _city;
  String? _latitude;
  String? _longitude;
  String? _country;
  String? _iso2;
  String? _adminName;
  String? _capital;
  String? _population;
  String? _populationProper;
  City copyWith({
    String? city,
    String? lat,
    String? lng,
    String? country,
    String? iso2,
    String? adminName,
    String? capital,
    String? population,
    String? populationProper,
  }) =>
      City(
        city: city ?? _city,
        lat: lat ?? _latitude,
        lng: lng ?? _longitude,
        country: country ?? _country,
        iso2: iso2 ?? _iso2,
        adminName: adminName ?? _adminName,
        capital: capital ?? _capital,
        population: population ?? _population,
        populationProper: populationProper ?? _populationProper,
      );
  String? get city => _city;
  String? get lat => _latitude;
  String? get lng => _longitude;
  String? get country => _country;
  String? get iso2 => _iso2;
  String? get adminName => _adminName;
  String? get capital => _capital;
  String? get population => _population;
  String? get populationProper => _populationProper;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['city'] = _city;
    map['lat'] = _latitude;
    map['lng'] = _longitude;
    map['country'] = _country;
    map['iso2'] = _iso2;
    map['admin_name'] = _adminName;
    map['capital'] = _capital;
    map['population'] = _population;
    map['population_proper'] = _populationProper;
    return map;
  }
}
