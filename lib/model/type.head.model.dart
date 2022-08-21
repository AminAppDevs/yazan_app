class TypeHead {
  TypeHead({
    required this.status,
    this.msg,
    required this.results,
  });
  late final int status;
  late final Null msg;
  late final Results results;

  TypeHead.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    msg = null;
    results = Results.fromJson(json['results']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['status'] = status;
    _data['msg'] = msg;
    _data['results'] = results.toJson();
    return _data;
  }
}

class Results {
  Results({
    required this.alltype,
    required this.partialContent,
  });
  late final List<Alltype> alltype;
  late final bool partialContent;

  Results.fromJson(Map<String, dynamic> json) {
    alltype =
        List.from(json['alltype']).map((e) => Alltype.fromJson(e)).toList();
    partialContent = json['partial_content'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['alltype'] = alltype.map((e) => e.toJson()).toList();
    _data['partial_content'] = partialContent;
    return _data;
  }
}

class Alltype {
  Alltype({
    required this.resultType,
    required this.resultObject,
    required this.scope,
  });
  late final String resultType;
  late final ResultObject resultObject;
  late final String scope;

  Alltype.fromJson(Map<String, dynamic> json) {
    resultType = json['result_type'];
    resultObject = ResultObject.fromJson(json['result_object']);
    scope = json['scope'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['result_type'] = resultType;
    _data['result_object'] = resultObject.toJson();
    _data['scope'] = scope;
    return _data;
  }
}

class ResultObject {
  ResultObject({
    required this.locationId,
    required this.name,
    required this.latitude,
    required this.longitude,
    required this.timezone,
    required this.locationString,
    required this.photo,
    required this.defaultOptions,
    required this.geoType,
    required this.locationSubtype,
    required this.hasRestaurantCoverpage,
    required this.hasAttractionCoverpage,
    required this.hasCuratedShoppingList,
    required this.showAddress,
    required this.preferredMapEngine,
    required this.description,
    required this.ancestors,
    required this.parentDisplayName,
    required this.guideCount,
  });
  late final String locationId;
  late final String name;
  late final String latitude;
  late final String longitude;
  late final String timezone;
  late final String locationString;
  late final Photo photo;
  late final List<DefaultOptions> defaultOptions;
  late final String geoType;
  late final String locationSubtype;
  late final bool hasRestaurantCoverpage;
  late final bool hasAttractionCoverpage;
  late final bool hasCuratedShoppingList;
  late final bool showAddress;
  late final String preferredMapEngine;
  late final String description;
  late final List<Ancestors> ancestors;
  late final String parentDisplayName;
  late final String guideCount;

  ResultObject.fromJson(Map<String, dynamic> json) {
    locationId = json['location_id'];
    name = json['name'];
    latitude = json['latitude'];
    longitude = json['longitude'];
    timezone = json['timezone'];
    locationString = json['location_string'];
    photo = Photo.fromJson(json['photo']);
    defaultOptions = List.from(json['default_options'])
        .map((e) => DefaultOptions.fromJson(e))
        .toList();
    geoType = json['geo_type'];
    locationSubtype = json['location_subtype'];
    hasRestaurantCoverpage = json['has_restaurant_coverpage'];
    hasAttractionCoverpage = json['has_attraction_coverpage'];
    hasCuratedShoppingList = json['has_curated_shopping_list'];
    showAddress = json['show_address'];
    preferredMapEngine = json['preferred_map_engine'];
    description = json['description'];
    ancestors =
        List.from(json['ancestors']).map((e) => Ancestors.fromJson(e)).toList();
    parentDisplayName = json['parent_display_name'];
    guideCount = json['guide_count'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['location_id'] = locationId;
    _data['name'] = name;
    _data['latitude'] = latitude;
    _data['longitude'] = longitude;
    _data['timezone'] = timezone;
    _data['location_string'] = locationString;
    _data['photo'] = photo.toJson();
    _data['default_options'] = defaultOptions.map((e) => e.toJson()).toList();
    _data['geo_type'] = geoType;
    _data['location_subtype'] = locationSubtype;
    _data['has_restaurant_coverpage'] = hasRestaurantCoverpage;
    _data['has_attraction_coverpage'] = hasAttractionCoverpage;
    _data['has_curated_shopping_list'] = hasCuratedShoppingList;
    _data['show_address'] = showAddress;
    _data['preferred_map_engine'] = preferredMapEngine;
    _data['description'] = description;
    _data['ancestors'] = ancestors.map((e) => e.toJson()).toList();
    _data['parent_display_name'] = parentDisplayName;
    _data['guide_count'] = guideCount;
    return _data;
  }
}

class Photo {
  Photo({
    required this.images,
    required this.isBlessed,
    required this.uploadedDate,
    required this.caption,
    required this.id,
    required this.helpfulVotes,
    required this.publishedDate,
    required this.user,
  });
  late final Images images;
  late final bool isBlessed;
  late final String uploadedDate;
  late final String caption;
  late final String id;
  late final String helpfulVotes;
  late final String publishedDate;
  late final User user;

  Photo.fromJson(Map<String, dynamic> json) {
    images = Images.fromJson(json['images']);
    isBlessed = json['is_blessed'];
    uploadedDate = json['uploaded_date'];
    caption = json['caption'];
    id = json['id'];
    helpfulVotes = json['helpful_votes'];
    publishedDate = json['published_date'];
    user = User.fromJson(json['user']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['images'] = images.toJson();
    _data['is_blessed'] = isBlessed;
    _data['uploaded_date'] = uploadedDate;
    _data['caption'] = caption;
    _data['id'] = id;
    _data['helpful_votes'] = helpfulVotes;
    _data['published_date'] = publishedDate;
    _data['user'] = user.toJson();
    return _data;
  }
}

class Images {
  Images({
    required this.small,
    required this.thumbnail,
    required this.original,
    required this.large,
    required this.medium,
  });
  late final Small small;
  late final Thumbnail thumbnail;
  late final Original original;
  late final Large large;
  late final Medium medium;

  Images.fromJson(Map<String, dynamic> json) {
    small = Small.fromJson(json['small']);
    thumbnail = Thumbnail.fromJson(json['thumbnail']);
    original = Original.fromJson(json['original']);
    large = Large.fromJson(json['large']);
    medium = Medium.fromJson(json['medium']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['small'] = small.toJson();
    _data['thumbnail'] = thumbnail.toJson();
    _data['original'] = original.toJson();
    _data['large'] = large.toJson();
    _data['medium'] = medium.toJson();
    return _data;
  }
}

class Small {
  Small({
    required this.width,
    required this.url,
    required this.height,
  });
  late final String width;
  late final String url;
  late final String height;

  Small.fromJson(Map<String, dynamic> json) {
    width = json['width'];
    url = json['url'];
    height = json['height'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['width'] = width;
    _data['url'] = url;
    _data['height'] = height;
    return _data;
  }
}

class Thumbnail {
  Thumbnail({
    required this.width,
    required this.url,
    required this.height,
  });
  late final String width;
  late final String url;
  late final String height;

  Thumbnail.fromJson(Map<String, dynamic> json) {
    width = json['width'];
    url = json['url'];
    height = json['height'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['width'] = width;
    _data['url'] = url;
    _data['height'] = height;
    return _data;
  }
}

class Original {
  Original({
    required this.width,
    required this.url,
    required this.height,
  });
  late final String width;
  late final String url;
  late final String height;

  Original.fromJson(Map<String, dynamic> json) {
    width = json['width'];
    url = json['url'];
    height = json['height'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['width'] = width;
    _data['url'] = url;
    _data['height'] = height;
    return _data;
  }
}

class Large {
  Large({
    required this.width,
    required this.url,
    required this.height,
  });
  late final String width;
  late final String url;
  late final String height;

  Large.fromJson(Map<String, dynamic> json) {
    width = json['width'];
    url = json['url'];
    height = json['height'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['width'] = width;
    _data['url'] = url;
    _data['height'] = height;
    return _data;
  }
}

class Medium {
  Medium({
    required this.width,
    required this.url,
    required this.height,
  });
  late final String width;
  late final String url;
  late final String height;

  Medium.fromJson(Map<String, dynamic> json) {
    width = json['width'];
    url = json['url'];
    height = json['height'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['width'] = width;
    _data['url'] = url;
    _data['height'] = height;
    return _data;
  }
}

class User {
  User({
    this.userId,
    required this.memberId,
    required this.type,
  });
  late final Null userId;
  late final String memberId;
  late final String type;

  User.fromJson(Map<String, dynamic> json) {
    userId = null;
    memberId = json['member_id'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['user_id'] = userId;
    _data['member_id'] = memberId;
    _data['type'] = type;
    return _data;
  }
}

class DefaultOptions {
  DefaultOptions({
    required this.key,
    required this.name,
  });
  late final String key;
  late final String name;

  DefaultOptions.fromJson(Map<String, dynamic> json) {
    key = json['key'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['key'] = key;
    _data['name'] = name;
    return _data;
  }
}

class Ancestors {
  Ancestors({
    required this.subcategory,
    required this.name,
    this.abbrv,
    required this.locationId,
  });
  late final List<Subcategory> subcategory;
  late final String name;
  late final Null abbrv;
  late final String locationId;

  Ancestors.fromJson(Map<String, dynamic> json) {
    subcategory = List.from(json['subcategory'])
        .map((e) => Subcategory.fromJson(e))
        .toList();
    name = json['name'];
    abbrv = null;
    locationId = json['location_id'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['subcategory'] = subcategory.map((e) => e.toJson()).toList();
    _data['name'] = name;
    _data['abbrv'] = abbrv;
    _data['location_id'] = locationId;
    return _data;
  }
}

class Subcategory {
  Subcategory({
    required this.key,
    required this.name,
  });
  late final String key;
  late final String name;

  Subcategory.fromJson(Map<String, dynamic> json) {
    key = json['key'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['key'] = key;
    _data['name'] = name;
    return _data;
  }
}
