# Defined in /tmp/fish.tQJEq4/jservice.fish @ line 2
function jservice
	set -l services postgresql redis docker
	systemctl $argv $services | grep active
end
