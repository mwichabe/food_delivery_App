import 'package:equatable/equatable.dart';

class User extends Equatable {
  final int id;
  final String name;
  final int age;
  final List<String> interests;
  final List<String> imageUrls;
  final String bio;
  final String jobTitle;

  const User({
    required this.id,
    required this.name,
    required this.age,
    required this.interests,
    required this.imageUrls,
    required this.bio,
    required this.jobTitle,
  });

  @override
  List<Object?> get props =>
      [id, name, age, imageUrls, bio, jobTitle];

  static List<User>users=[
    const User(
        id: 1,
        name: 'Batman',
        age: 32,
        interests: ['Diving', 'Stopping bad Guys','Voice Alteration'],
        imageUrls:
        [
          'https://i.pinimg.com/564x/54/40/3f/54403fa9bb582b7f2d7a73dd52b43226.jpg',
          'https://i.pinimg.com/236x/e7/8f/0c/e78f0c0218f49e72fe2faf41bea3bc8f.jpg',
          'https://i.pinimg.com/236x/52/cc/9c/52cc9c6b45271d16ee81a20752f132b9.jpg',
        ],
        bio: 'I am Batman',
        jobTitle: 'Gotham Superhero'
    ),
    const User(
        id: 2,
        name: 'SpiderMan',
        age: 16,
        interests: ['Swinging', 'Laughing','Dancing'],
        imageUrls:
        [
          'https://i.pinimg.com/736x/40/9f/dd/409fdda4d842ce91ae0bca8226ab55cd.jpg',
          'https://i.pinimg.com/564x/8b/98/74/8b98747cac1a0386d009876f67a44795.jpg',
          'https://i.pinimg.com/474x/6c/0f/60/6c0f601bcd86660d78a3feea75599e67.jpg',
        ],
        bio: 'Great power comes with great responsibilities',
        jobTitle: 'Superhero in New-York'
    ),
    const User(
        id: 3,
        name: 'DeadPool',
        age: 27,
        interests: ['Rapping', 'Dancing','Swimming'],
        imageUrls: [
          'https://i.pinimg.com/236x/91/0f/02/910f0279c1e986f2ba5b3e749607a94d.jpg',
          'https://i.pinimg.com/736x/b5/34/f9/b534f93c5cd4a9f7ec0032b121bba8d4.jpg',
          'https://i.pinimg.com/736x/40/66/d5/4066d50e0098e3b2b7b567e64933a552.jpg'
        ],
        bio: 'Unpredictable',
        jobTitle: 'Mobile Developer'
    )
  ];
}
