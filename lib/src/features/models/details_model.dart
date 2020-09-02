import 'dart:convert';

Detail detailFromJson(String str) => Detail.fromJson(json.decode(str));

String detailToJson(Detail data) => json.encode(data.toJson());

class Detail {
  Detail({
    this.error,
    this.limit,
    this.offset,
    this.numberOfPageResults,
    this.numberOfTotalResults,
    this.statusCode,
    this.results,
    this.version,
  });

  String error;
  int limit;
  int offset;
  int numberOfPageResults;
  int numberOfTotalResults;
  int statusCode;
  ResultsDetail results;
  String version;

  factory Detail.fromJson(Map<String, dynamic> json) => Detail(
        error: json["error"],
        limit: json["limit"],
        offset: json["offset"],
        numberOfPageResults: json["number_of_page_results"],
        numberOfTotalResults: json["number_of_total_results"],
        statusCode: json["status_code"],
        results: ResultsDetail.fromJson(json["results"]),
        version: json["version"],
      );

  Map<String, dynamic> toJson() => {
        "error": error,
        "limit": limit,
        "offset": offset,
        "number_of_page_results": numberOfPageResults,
        "number_of_total_results": numberOfTotalResults,
        "status_code": statusCode,
        "results": results.toJson(),
        "version": version,
      };
}

class ResultsDetail {
  ResultsDetail({
    this.aliases,
    this.apiDetailUrl,
    this.characterCredits,
    this.characterDiedIn,
    this.conceptCredits,
    this.coverDate,
    this.dateAdded,
    this.dateLastUpdated,
    this.deck,
    this.description,
    this.firstAppearanceCharacters,
    this.firstAppearanceConcepts,
    this.firstAppearanceLocations,
    this.firstAppearanceObjects,
    this.firstAppearanceStoryarcs,
    this.firstAppearanceTeams,
    this.hasStaffReview,
    this.id,
    this.image,
    this.issueNumber,
    this.locationCredits,
    this.name,
    this.objectCredits,
    this.personCredits,
    this.siteDetailUrl,
    this.storeDate,
    this.storyArcCredits,
    this.teamCredits,
    this.teamDisbandedIn,
    this.volume,
  });

  dynamic aliases;
  String apiDetailUrl;
  List<Volume> characterCredits;
  List<dynamic> characterDiedIn;
  List<Volume> conceptCredits;
  DateTime coverDate;
  DateTime dateAdded;
  DateTime dateLastUpdated;
  dynamic deck;
  String description;
  dynamic firstAppearanceCharacters;
  dynamic firstAppearanceConcepts;
  dynamic firstAppearanceLocations;
  dynamic firstAppearanceObjects;
  dynamic firstAppearanceStoryarcs;
  dynamic firstAppearanceTeams;
  bool hasStaffReview;
  int id;
  Image image;
  String issueNumber;
  List<Volume> locationCredits;
  String name;
  List<dynamic> objectCredits;
  List<Volume> personCredits;
  String siteDetailUrl;
  dynamic storeDate;
  List<dynamic> storyArcCredits;
  List<Volume> teamCredits;
  List<dynamic> teamDisbandedIn;
  Volume volume;

  factory ResultsDetail.fromJson(Map<String, dynamic> json) => ResultsDetail(
        aliases: json["aliases"],
        apiDetailUrl: json["api_detail_url"],
        characterCredits: List<Volume>.from(
            json["character_credits"].map((x) => Volume.fromJson(x))),
        characterDiedIn:
            List<dynamic>.from(json["character_died_in"].map((x) => x)),
        conceptCredits: List<Volume>.from(
            json["concept_credits"].map((x) => Volume.fromJson(x))),
        coverDate: DateTime.parse(json["cover_date"]),
        dateAdded: DateTime.parse(json["date_added"]),
        dateLastUpdated: DateTime.parse(json["date_last_updated"]),
        deck: json["deck"],
        description: json["description"],
        firstAppearanceCharacters: json["first_appearance_characters"],
        firstAppearanceConcepts: json["first_appearance_concepts"],
        firstAppearanceLocations: json["first_appearance_locations"],
        firstAppearanceObjects: json["first_appearance_objects"],
        firstAppearanceStoryarcs: json["first_appearance_storyarcs"],
        firstAppearanceTeams: json["first_appearance_teams"],
        hasStaffReview: json["has_staff_review"],
        id: json["id"],
        image: Image.fromJson(json["image"]),
        issueNumber: json["issue_number"],
        locationCredits: List<Volume>.from(
            json["location_credits"].map((x) => Volume.fromJson(x))),
        name: json["name"],
        objectCredits: List<dynamic>.from(json["object_credits"].map((x) => x)),
        personCredits: List<Volume>.from(
            json["person_credits"].map((x) => Volume.fromJson(x))),
        siteDetailUrl: json["site_detail_url"],
        storeDate: json["store_date"],
        storyArcCredits:
            List<dynamic>.from(json["story_arc_credits"].map((x) => x)),
        teamCredits: List<Volume>.from(
            json["team_credits"].map((x) => Volume.fromJson(x))),
        teamDisbandedIn:
            List<dynamic>.from(json["team_disbanded_in"].map((x) => x)),
        volume: Volume.fromJson(json["volume"]),
      );

  Map<String, dynamic> toJson() => {
        "aliases": aliases,
        "api_detail_url": apiDetailUrl,
        "character_credits":
            List<dynamic>.from(characterCredits.map((x) => x.toJson())),
        "character_died_in": List<dynamic>.from(characterDiedIn.map((x) => x)),
        "concept_credits":
            List<dynamic>.from(conceptCredits.map((x) => x.toJson())),
        "cover_date":
            "${coverDate.year.toString().padLeft(4, '0')}-${coverDate.month.toString().padLeft(2, '0')}-${coverDate.day.toString().padLeft(2, '0')}",
        "date_added": dateAdded.toIso8601String(),
        "date_last_updated": dateLastUpdated.toIso8601String(),
        "deck": deck,
        "description": description,
        "first_appearance_characters": firstAppearanceCharacters,
        "first_appearance_concepts": firstAppearanceConcepts,
        "first_appearance_locations": firstAppearanceLocations,
        "first_appearance_objects": firstAppearanceObjects,
        "first_appearance_storyarcs": firstAppearanceStoryarcs,
        "first_appearance_teams": firstAppearanceTeams,
        "has_staff_review": hasStaffReview,
        "id": id,
        "image": image.toJson(),
        "issue_number": issueNumber,
        "location_credits":
            List<dynamic>.from(locationCredits.map((x) => x.toJson())),
        "name": name,
        "object_credits": List<dynamic>.from(objectCredits.map((x) => x)),
        "person_credits":
            List<dynamic>.from(personCredits.map((x) => x.toJson())),
        "site_detail_url": siteDetailUrl,
        "store_date": storeDate,
        "story_arc_credits": List<dynamic>.from(storyArcCredits.map((x) => x)),
        "team_credits": List<dynamic>.from(teamCredits.map((x) => x.toJson())),
        "team_disbanded_in": List<dynamic>.from(teamDisbandedIn.map((x) => x)),
        "volume": volume.toJson(),
      };
}

class Volume {
  Volume({
    this.apiDetailUrl,
    this.id,
    this.name,
    this.siteDetailUrl,
    this.role,
  });

  String apiDetailUrl;
  int id;
  String name;
  String siteDetailUrl;
  String role;

  factory Volume.fromJson(Map<String, dynamic> json) => Volume(
        apiDetailUrl: json["api_detail_url"],
        id: json["id"],
        name: json["name"],
        siteDetailUrl: json["site_detail_url"],
        role: json["role"] == null ? null : json["role"],
      );

  Map<String, dynamic> toJson() => {
        "api_detail_url": apiDetailUrl,
        "id": id,
        "name": name,
        "site_detail_url": siteDetailUrl,
        "role": role == null ? null : role,
      };
}

class Image {
  Image({
    this.iconUrl,
    this.mediumUrl,
    this.screenUrl,
    this.screenLargeUrl,
    this.smallUrl,
    this.superUrl,
    this.thumbUrl,
    this.tinyUrl,
    this.originalUrl,
    this.imageTags,
  });

  String iconUrl;
  String mediumUrl;
  String screenUrl;
  String screenLargeUrl;
  String smallUrl;
  String superUrl;
  String thumbUrl;
  String tinyUrl;
  String originalUrl;
  String imageTags;

  factory Image.fromJson(Map<String, dynamic> json) => Image(
        iconUrl: json["icon_url"],
        mediumUrl: json["medium_url"],
        screenUrl: json["screen_url"],
        screenLargeUrl: json["screen_large_url"],
        smallUrl: json["small_url"],
        superUrl: json["super_url"],
        thumbUrl: json["thumb_url"],
        tinyUrl: json["tiny_url"],
        originalUrl: json["original_url"],
        imageTags: json["image_tags"],
      );

  Map<String, dynamic> toJson() => {
        "icon_url": iconUrl,
        "medium_url": mediumUrl,
        "screen_url": screenUrl,
        "screen_large_url": screenLargeUrl,
        "small_url": smallUrl,
        "super_url": superUrl,
        "thumb_url": thumbUrl,
        "tiny_url": tinyUrl,
        "original_url": originalUrl,
        "image_tags": imageTags,
      };
}
