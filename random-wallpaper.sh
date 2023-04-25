#!/bin/bash
echo "Script is running"

# Set an array of directories containing your images
image_dirs=(
  "/Users/basel/pictures/github_photos/walls/abstract"
  "/Users/basel/pictures/github_photos/walls/aerial"
  "/Users/basel/pictures/github_photos/walls/animated"
  "/Users/basel/pictures/github_photos/walls/apeiros"
  "/Users/basel/pictures/github_photos/walls/apocalypse"
  "/Users/basel/pictures/github_photos/walls/architecture"
  "/Users/basel/pictures/github_photos/walls/basalt"
  "/Users/basel/pictures/github_photos/walls/centered"
  "/Users/basel/pictures/github_photos/walls/cherry"
  "/Users/basel/pictures/github_photos/walls/chillop"
  "/Users/basel/pictures/github_photos/walls/cold"
  "/Users/basel/pictures/github_photos/walls/devicons"
  "/Users/basel/pictures/github_photos/walls/digital"
  "/Users/basel/pictures/github_photos/walls/dreamcore"
  "/Users/basel/pictures/github_photos/walls/fauna"
  "/Users/basel/pictures/github_photos/walls/flowers"
  "/Users/basel/pictures/github_photos/walls/fogsmoke"
  "/Users/basel/pictures/github_photos/walls/geometry"
  "/Users/basel/pictures/github_photos/walls/gruvbox"
  "/Users/basel/pictures/github_photos/walls/halloween"
  "/Users/basel/pictures/github_photos/walls/jackb"
  "/Users/basel/pictures/github_photos/walls/lightbulb"
  "/Users/basel/pictures/github_photos/walls/logo"
  "/Users/basel/pictures/github_photos/walls/manga"
  "/Users/basel/pictures/github_photos/walls/minimal"
  "/Users/basel/pictures/github_photos/walls/monochrome"
  "/Users/basel/pictures/github_photos/walls/mountain"
  "/Users/basel/pictures/github_photos/walls/nature"
  "/Users/basel/pictures/github_photos/walls/nord"
  "/Users/basel/pictures/github_photos/walls/outrun"
  "/Users/basel/pictures/github_photos/walls/painting"
  "/Users/basel/pictures/github_photos/walls/paper"
  "/Users/basel/pictures/github_photos/walls/pixel"
  "/Users/basel/pictures/github_photos/walls/poly"
  "/Users/basel/pictures/github_photos/walls/radium"
  "/Users/basel/pictures/github_photos/walls/solarized"
  "/Users/basel/pictures/github_photos/walls/spam"
  "/Users/basel/pictures/github_photos/walls/tile"
  "/Users/basel/pictures/github_photos/walls/unsorted"
)


# Set the time interval between shuffling the images (in seconds)
interval=300

while true; do
  # Select a random directory from the array
  dir=${image_dirs[$RANDOM % ${#image_dirs[@]}]}

  # Select a random image from the directory
  image_file=$(ls "$dir"/*.{jpg,png} | shuf -n1)

  # Set the image as your wallpaper
  osascript -e "tell application \"Finder\" to set desktop picture to POSIX file \"$image_file\""

  # Wait for the specified interval before shuffling again
  sleep $interval
done
