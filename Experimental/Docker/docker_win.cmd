start "" "docker.exe" pull ateshkoul/predpsych
start "" "docker.exe" run --rm -p 8787:8787 -e PASSWORD=predpsych ateshkoul/predpsych
start "" http://localhost:8787/
