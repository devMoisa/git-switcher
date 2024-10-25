[http]
        postBuffer = 524288000

[user]
        name = Moisés Vilas Boas
        email = moises01@example.com

[alias]
    po = !git pull origin
    fpo = !git fetch origin
    s = !git status -s
    c = !git add --all && git commit -m
    l = log --pretty=oneline -n 20 --graph --abbrev-commit