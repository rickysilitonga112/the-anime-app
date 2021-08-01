class Anime {
  String title;
  String genre;
  double rating;
  int episode;
  String views;
  String synopsis;
  String poster;
  String banner;

  Anime(
      {required this.title,
      required this.genre,
      required this.rating,
      required this.episode,
      required this.views,
      required this.synopsis,
      required this.poster,
      required this.banner});
}

List<Anime> animeList = [
  Anime(
    title: 'Attack On Titan',
    genre: 'Action, War',
    rating: 4.9,
    episode: 24,
    views: '12 M',
    synopsis:
        'The plot of Attack on Titan centers on a civilization inside three walls, the last location where humans still live. Over one hundred years ago, humanity was driven to the brink of extinction after the emergence of humanoid giants called Titans, who attack and eat humans on sight.',
    poster: 'snk_poster',
    banner: 'snk_banner',
  ),
  Anime(
    title: 'Tokyo Revengers',
    genre: 'Action, Science Fiction',
    rating: 4.9,
    episode: 24,
    views: '10 M',
    synopsis:
        "Takemichi Hanagaki's life is at an all-time low. Just when he thought it couldn't get worse, he finds out that Hinata Tachibana, his ex-girlfriend, was murdered by the Tokyo Manji Gang: a group of vicious criminals that has been disturbing society's peace for quite some time.",
    poster: 'torev_poster',
    banner: 'torev_banner',
  ),
  Anime(
    title: 'Naruto Shippuden',
    genre: 'Action, Fantasy',
    rating: 4.8,
    episode: 500,
    views: '9M',
    synopsis:
        "Twelve years before the start of the series, the Nine-Tails attacked Konohagakure destroying much of the village and taking many lives. The leader of the village, the Fourth Hokage, sacrificed his life to seal the Nine-Tails into a newborn, Naruto Uzumaki. Orphaned by the attack, Naruto was shunned by the villagers, who out of fear and anger, viewed him as the Nine-Tails itself. Though the Third Hokage outlawed speaking about anything related to the Nine-Tails, the children — taking their cues from their parents — inherited the same animosity towards Naruto. In his thirst to be acknowledged, Naruto vowed he would one day become the greatest Hokage the village had ever seen.",
    poster: 'naruto_poster',
    banner: 'naruto_banner',
  ),
  Anime(
    title: 'One Punch Man',
    genre: 'Action, Comedy',
    rating: 4.7,
    episode: 21,
    views: '8.5M',
    synopsis:
        "On a supercontinent Earth, powerful monsters and villains have been wreaking havoc in the cities. In response, the millionaire Agoni creates the Hero Association, which employs superheroes to fight evil. Saitama, an unassociated hero, hails from City Z and performs heroic deeds as a hobby. He has trained himself to the point of being able to defeat any enemy with a single punch, but his unmatched strength has left him with an overwhelming sense of boredom. Saitama eventually becomes a reluctant mentor to Genos, a cyborg seeking revenge against another cyborg who killed his family and destroyed his hometown.",
    poster: 'opm_poster',
    banner: 'opm_banner',
  ),
  Anime(
    title: 'Fullmetal Alchemist',
    genre: 'Action, Science Fiction',
    rating: 4.6,
    episode: 51,
    views: '8.4M',
    synopsis:
        "Edward and Alphonse Elric live in Resembool with their mother Trisha and father Van Hohenheim, the latter having left without a reason. Trisha soon dies from an illness. After finishing their alchemy training under Izumi Curtis, the Elrics attempt to bring their mother back with alchemy. The transmutation backfires, and Edward loses his left leg while Alphonse loses his body. Edward sacrifices his right arm to retrieve Alphonse's soul, binding it to a suit of armor. Edward is invited by Roy Mustang to become a State Alchemist (to research a way to restore their bodies) and undergoes a painful medical procedure which grants him prosthetic automail limbs. Edward becomes a State Alchemist, with the title of Fullmetal Alchemist. The Elrics spend the next three years searching for the mythical Philosopher's Stone to achieve their goals.",
    poster: 'fullmetal_poster',
    banner: 'fullmetal_banner',
  ),
  Anime(
    title: 'Steins;Gate',
    genre: 'Science Fiction',
    rating: 4.5,
    episode: 26,
    views: '8M',
    synopsis:
        "Steins; Gate is a story about time travel and the consequences of it's misuse. The protagonist is a man named Okabe Rintarou; a self-proclaimed 'mad scientist' who goes by the name of Hououin Kyouma. He is about to attend a lecture from a man proclaiming to have discovered the secrets of time travel, Rintarou then challenges his theorem by claiming a man named 'John Titor' has beaten him to it. He is taken away from the lecture by a strange girl named Makise Kurisu who asks him about a previous conversation they had not too long ago, but Rintarou has no idea who this girl is and leaves her- only to find out that shortly after his departure she has been stabbed to death. Perplexed by these recent events, Rintarou sends a message to a friend named Itaru concerning Kurisu's murder. As he clicks the 'send message button' he is unconsciously thrown into a alternate reality several inconsistencies with his own memories such as John Titor never appearing in 2010 or there being a large satellite crashed into the roof of the radio kaikan. Dumbfounded by this experience, he begins to piece together a successful method of time travel.",
    poster: 'steins_poster',
    banner: 'steins_banner',
  ),
  Anime(
    title: 'Your Name',
    genre: 'Romance, Drama',
    rating: 4.4,
    episode: 1,
    views: '7.4M',
    synopsis:
        "Mitsuha Miyamizu, a high school girl, yearns to live the life of a boy in the bustling city of Tokyo—a dream that stands in stark contrast to her present life in the countryside. Meanwhile in the city, Taki Tachibana lives a busy life as a high school student while juggling his part-time job and hopes for a future in architecture.",
    poster: 'kiminonawa_poster',
    banner: 'kiminonawa_banner',
  ),
  Anime(
    title: 'A Silent Voice',
    genre: 'Romance, Drama',
    rating: 4.2,
    episode: 1,
    views: '7M',
    synopsis:
        "Shouya Ishida, a boy always looking for ways to beat boredom, ends up looking for it in the wrong place. Weirded out by his new classmate, a deaf transfer student named Shouko Nishimiya, he deems her as the target of his ostracizing and bullying. Day after day, Shouya picks on Shouko, unaware of the effects of his thoughtless actions. He finally understands the pain he has inflicted on her when one day, his bullying culminates in her leaving the school, and his classmates begin to shun and harass him every chance they get instead. Determined to right his wrongs, five years later, Shouya, now a third year high school loner, meets Shouko again. Thus begins the story of a young man's path to redemption.",
    poster: 'koenokatachi_poster',
    banner: 'koenokatachi_banner',
  ),
  Anime(
    title: 'Kimetsu No Yaiba',
    genre: 'Action',
    rating: 4.1,
    episode: 24,
    views: '6.7M',
    synopsis:
        "Ever since the death of his father, the burden of supporting the family has fallen upon Tanjirou Kamado's shoulders. Though living impoverished on a remote mountain, the Kamado family are able to enjoy a relatively peaceful and happy life. One day, Tanjirou decides to go down to the local village to make a little money selling charcoal. On his way back, night falls, forcing Tanjirou to take shelter in the house of a strange man, who warns him of the existence of flesh-eating demons that lurk in the woods at night.",
    poster: 'kimetsu_poster',
    banner: 'kimetsu_banner',
  ),
  Anime(
    title: 'Death Note',
    genre: 'Mysteri, Thriller',
    rating: 4.1,
    episode: 24,
    views: '5M',
    synopsis:
        "Ryuk, a god of death, drops his Death Note into the human world for personal pleasure. In Japan, prodigious high school student Light Yagami stumbles upon it. Inside the notebook, he finds a chilling message: those whose names are written in it shall die. Its nonsensical nature amuses Light; but when he tests its power by writing the name of a criminal in it, they suddenly meet their demise. Death Note tells the thrilling tale of Light and L as they clash in a great battle-of-minds, one that will determine the future of the world.",
    poster: 'deathnote_poster',
    banner: 'deathnote_banner',
  ),
];
