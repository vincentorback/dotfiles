function lyrics --description 'Get lyrics from song currently playing on spotify'
  set -l artist (osascript -e "tell application \"Spotify\"" -e "get artist of current track" -e "end tell")
  set -l title (osascript -e "tell application \"Spotify\"" -e "get name of current track" -e "end tell")
  # set -l song (curl -s --get "https://makeitpersonal.co/lyrics" --data-urlencode "artist=$artist" --data-urlencode "title=$title")
  set -l song (curl -s --get "https://www.abbreviations.com/services/v2/lyrics.php?uid=8508&tokenid=ub0da9tNf7U0wDVj&format=json&" --data-urlencode "artist=$artist" --data-urlencode "term=$title")

  echo -e "$artist - $title\n$song"
end
