const String baseUrl = 'https://developers.themoviedb.org/3';
const String api_key = 'a15091a3b5dac2d68bd8798b2f5be921';


//Account
const String getDetails = '/account';
const String getCreatedLists = '/account/{account_id}/lists';
const String getFavoritMovies = '/account/{account_id}/favorite/movies';
const String getFavoritTvShowv = '/account/{account_id}/favorite/tv';
const String getRatedMovies = '/account/{account_id}/rated/movies';
const String getRatedTvShow = '/account/{account_id}/rated/tv';
const String getRatedTvEpisode = '/account/{account_id}/rated/tv/episodes';
const String getMovieWatchlist = '/account/{account_id}/watchlist/movies';
const String getTvShowWatchlist = '/account/{account_id}/watchlist/tv';
const String markFavorit = '/account/{account_id}/favorite';
const String addToWatchlist = '/account/{account_id}/watchlist';
//Authentication
const String getCreateGuestSession = '/authentication/guest_session/new';
const String getCreateRequestToken = '/authentication/token/new';
const String createSession = '/authentication/session/new';
const String createSessionWithLogin = '/authentication/token/validate_with_login';
const String deleteSession = '/authentication/session';
//Certifications
const String getMovieCertification = '/certification/movie/list';
const String getTvCertifications = '/certification/tv/list';