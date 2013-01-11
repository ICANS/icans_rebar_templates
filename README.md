icans_rebar_templates
======================

ICANS application and project templates for basho's rebar.

Setup (Linux)
-------------
mkdir -p ~/.icans/resources/  (or any other place you fancy)

cd ~/.icans/resources/

git clone git://github.com/ICANS/icans_rebar_templates.git

mkdir -p ~/.rebar/templates

cp -R ~/.icans/resources/icans_rebar_templates/* ~/.rebar/templates/

Usage (Linux)
-------------
To create a project with multiple app:
rebar create template=icans_multiapp_proj projectid=<your project> author="you <you@example.com>" [appid=<root app>]

To create an application
rebar create template=icans_app appid=<app name> author="you <you@example.com>"

To create a library application (no {mod, ...} in app.src)
rebar create template=icans_lib appid=<app name> author="you <you@example.com>"

Setup & Usage (Windows)
-----------------------
I don't know. Anyone?


Notes
-----
We will release a small set of icans tools for erlang soon, which will among other things wrap rebar + icans_rebar_templates. You will be able to fill in the author parameter according to your git configuration, so you don't have to set it explicitly every time.
