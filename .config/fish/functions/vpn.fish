# Defined in /tmp/fish.tXfmqj/vpn.fish @ line 2
function vpn
sudo sshuttle --dns -vr ec2-user@35.158.114.57 -x 35.158.114.57 0/0 --ssh-cmd 'ssh -i /home/denis/docs/softarex-vpn.pem'

end
