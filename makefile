all:
	printf "# Peer-graded Assignment: Bash, Make, Git, and GitHub\n" > README.md
	{ printf "## " & date; } >> README.md
	{ printf "## " & cat guessinggame.sh | wc -l | xargs; } >> README.md

clean:
	rm README.md
