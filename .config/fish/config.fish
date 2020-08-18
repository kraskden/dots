function sudo --description "Replacement for Bash 'sudo !!' command to run last command using sudo."
    if test "$argv" = !!
    eval command sudo $history[1]
else
    command sudo $argv
    end
end

function cdls --description "merged cd & ls command"
	cd $argv
	ls
end

function nvmonitor
	nvidia-smi --query-gpu=timestamp,temperature.gpu,clocks.current.graphics --format=csv -l $argv
end

# Exit on Alt+q
bind \eq 'exit'

alias music-dl="youtube-dl --extract-audio --audio-format mp3"
alias tanki="chromium --disable-frame-rate-limit 'https://tankionline.com/play' &" 
alias ranger="ranger -r /home/denis/.config/ranger"
set AWS ubuntu@ec2-18-217-198-173.us-east-2.compute.amazonaws.com
