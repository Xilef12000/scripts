# this script maps all connected wacom input devices to your primary screen
screen=$(xrandr | grep primary | grep -o '^[^ ]*')
echo "$screen is your primary screen"
xinput list | grep Wacom | while read -r line ; do
    id=$(echo $line | grep -E -o id=.{2} | grep -o '..$')
    echo "maping $(echo $line | grep -o '^[^id]*' | sed -n 's/.*↳ //p')with id $id to $screen"
    xinput map-to-output $id $screen
done