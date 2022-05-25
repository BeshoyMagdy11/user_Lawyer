class FaceBookModel{
   final String? name;
   final String? emil;
   final String? id;
   final FaceBookPhotoModel? faceBookPhotoModel;

  FaceBookModel({this.name, this.emil, this.id, this.faceBookPhotoModel});
  factory FaceBookModel.fromJson(Map<String,dynamic> json)=>FaceBookModel(
    name: json['name'],
    emil: json['email'],
    id: json['id'],
    faceBookPhotoModel: FaceBookPhotoModel.fromJson(json['picture']['data'])
  );
}

class FaceBookPhotoModel {
  final String? url;
  final int? height;
  final int? widht;

  FaceBookPhotoModel({this.url, this.height, this.widht});


  factory FaceBookPhotoModel.fromJson(Map<String,dynamic> json)=> FaceBookPhotoModel(
    url: json['url'],
    height: json['height'],
    widht: json['width'],

  );
}



