Resume Builder
==============

This repository is meant to make it easy to automatically build and keep a resume up-to-date. It uses a dockerized LaTeX build system to take templates
and generate PDFs. This means you can change your content and then rebuild personalized resumes by simply running a script.


Examples
--------

See some examples in the `Examples` folder.


Prerequisites
-------------

- Wi̶n̶d̶o̶w̶s̶ Support for Mac and Linux added
- Docker
- A text editor


What you need to change to build
--------------------------------

- The path in win-recompile.bat to your cloned directory. It's currently hardcoded because I'm bad at Windows and "." did not work
- A Resume template (See examples in Resume-Template-1.tex and Resume-Template-2.tex)


How do you build
----------------

Run the following command. This will generate a Resume per company in `companies.txt` and put the PDFs in `Final Resumes`

Windows:
`.\gen-resumes.ps1 .\Resume-Template-1.tex .\companies.txt`
Linux/MacOS
`sudo ./gen-resumes.sh Resume-Template-1.tex companies.txt`

What should be customized
-------------------------

- Change all variables in `settings.tex`
- Rearrange/rename imports in your resume templates
- Change the content of the subsections


Not working?
------------

There are likely bugs. I put enough effort into this so that it worked for me. I make no guarantees it will work for everyone but I thought it
would still be useful to publish.
