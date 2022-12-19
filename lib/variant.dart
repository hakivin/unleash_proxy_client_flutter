class Variant {
  final String name;
  final bool enabled;

  static Variant DEFAULT = Variant(name: 'disabled', enabled: false);

  Variant({required this.name, required this.enabled});

  factory Variant.fromJson(Map<String, dynamic> json) {
    return Variant(name: json["name"], enabled: json["enabled"]);
  }

  bool operator ==(Object other) {
    return other is Variant && (other.name == name && other.enabled == enabled);
  }

  String toString() {
    return '{name: ${name}, enabled: ${enabled}}';
  }
}