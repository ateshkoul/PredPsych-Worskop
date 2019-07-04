@ECHO OFF
start "" "docker.exe" pull ateshkoul/predpsych
timeout 2 /nobreak > nul
start "" "docker.exe" run --name "predpsych" --rm -p 8787:8787 -e PASSWORD=predpsych ateshkoul/predpsych 
timeout 2 /nobreak > nul
start "" http://localhost:8787/
timeout 3 /nobreak > nul
ECHO "Stop Container?"
PAUSE
start "" "docker.exe" stop predpsych 
