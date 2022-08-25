bash startup_backend.sh &

conky -c ./configs/cpu-roll.conf &
conky -c ./configs/mem-roll.conf &
conky -c ./configs/temp-roll.conf &
conky -c ./configs/journal-roll.conf &
conky -c ./configs/cmd-roll.conf &

