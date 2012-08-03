function tmx() {
  sesh="do you party?"

  tmux has-session -t "$sesh"
  if [ $? -eq 0 ]; then
    echo "Session $sesh already exists. Attaching..."
    sleep 1
    tmux attach -t "$sesh"
    exit 0;
  else
    tmux new-session -d -s "$sesh" -n 'view'
    tmux neww -n 'helper'
    tmux neww -n 'controller'ϟ
    tmux neww -d -n 'git'ϟ
    tmux neww -d -n 'model'ϟ
    tmux neww -d -n 'shell'ϟ
    tmux neww -d -n 'util'ϟ
    TERM=xterm-256color tmux attach-session -t "$sesh"
  fi
}

function firestarter() {
  if [ -n "$TMUX" ]; then
    tmux neww -n "FIRE!"
    tmux splitw -v -l 20 -t "FIRE!"
    tmux splitw -d -h -t "FIRE!"

    tmux select-pane -t 1 && tmux send-keys "startmongo" C-m
    tmux select-pane -t 2 && tmux send-keys "rails server" C-m
    tmux select-pane -t 0 && tmux send-keys "rails console" C-m
  else
    echo "ERROR: You can only start fires at the party."
  fi
}

function killitwithfire() {
  if [ -n "$TMUX" ]; then
    tmux killw -t "FIRE!"
  else
    echo "You're not at the party"
  fi
}
