all:
	echo "# Peer-graded Assignment: Bash, Make, Git, and GitHub" > README.md
	date >> README.md
	cat guessinggame.sh | wc -l | xargs >> README.md

clean:
	rm README.md
