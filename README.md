# Books

Physical [adjective][species] publications

## Developing

You will need LaTeX and any packages specified by the book you're working on.  These instructions assume a Linux install; for OS X or Windows, Vagrant can be helpful.  You can run `make sysdeps` to install texlive and dependencies for tlmgr on Ubuntu.

For whichever book you're working on, you'll probably want to make sure you have the LaTeX packages needed for that.  You can run `make install-texdeps` to install all dependencies for that book (it won't touch already installed packages).  If you want to update all of your packages, you can run `make update-texdeps`.

You can build a book by selecting which format you want to build (e.g: manuscript) and running the build target against that:

```bash
# In bash, etc.
FILE=manuscript make build
# In fish
env FILE=manuscript make build
```

If you're developing on a book, it may be helpful to simply rebuild whenever a file is changed:

```bash
# in bash, etc.
FILE=manuscript make watch
# In fish
env FILE=manuscript make watch
```

NB: this onlly works on linux; inotifywait doesn't understand signals from OS X or Windows, even if you have a shared folder such as `/vagrant`.
