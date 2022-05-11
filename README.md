# trans-neofetch
neofetch, but ♥ ✿ * gay* ♥ ✿




okay so i have little to no idea of how to do this, so as i figure it out i will fix stuff.
SO my goal here is to rebuild neofetch with LGBTQIA+ themed distro ascii art

until i figure out how to make this an installable app, im just going to show you what i did to get what i got

//////////////////////////////////////////////////////////////////////////////////////////////////////////

+-+-+ there are two files you need to find and edit
-+-+- i am doing all of this on archcraft and am installing most everything with yay
+-+-+ also im using alacritty with the catppuccion theme

first off you need to find you /.config/neofetch/config.conf
- for me that didnt exist until i reinstalled neofetch with yay
- with a text editor like vim or nano go in and change whatever settings you want, ill add my config here too if you want to just copy paste
-   -   - im sure there is a way, but this isnt where i hit the ascii with the gay laser, thats next


neofetch pulls its ascii art from a /usr/ file, a lot of guides on internet say this is in different places and a lot of the spots just didnt work for me.
so what i did was run the command ` which neofetch ` then used vim to edit the file
- from there if you scroll down a few thousand lines and youll start seeing ascii art
- from there find your distros art or find a distro youre willing to replace (more on that next)


i ended up changing my neofetch distro output to "redstar" in the /.config/neofetch/config.conf file
then replaced redstar os's ascii art in the /usr/local/bin/neofetch file







more info




so this is what the ascii art is going to look like in the bin file

        "PacBSD"*)
            set_colors 1 7 3
            read -rd '' ascii_data <<'EOF'
${c1}      :+sMs.
  `:ddNMd-                         -o--`
 -sMMMMh:                          `+N+``
 yMMMMMs`     .....-/-...           `mNh/
 yMMMMMmh+-`:sdmmmmmmMmmmmddy+-``./ddNMMm
 yNMMNMMMMNdyyNNMMMMMMMMMMMMMMMhyshNmMMMm
 :yMMMMMMMMMNdooNMMMMMMMMMMMMMMMMNmy:mMMd
  +MMMMMMMMMmy:sNMMMMMMMMMMMMMMMMMMMmshs-
  :hNMMMMMMN+-+MMMMMMMMMMMMMMMMMMMMMMMs.
 .omysmNNhy/+yNMMMMMMMMMMNMMMMMMMMMNdNNy-
 /hMM:::::/hNMMMMMMMMMMMm/-yNMMMMMMN.mMNh`
.hMMMMdhdMMMMMMMMMMMMMMmo  `sMMMMMMN mMMm-
:dMMMMMMMMMMMMMMMMMMMMMdo+  oMMMMMMN`smMNo`
/dMMMMMMMMMMMMMMMMMMMMMNd/` :yMMMMMN:-hMMM.
:dMMMMMMMMMMMMMMMMMMMMMNh`  oMMMMMMNo/dMNN`
:hMMMMMMMMMMMMMMMMMMMMMMNs--sMMMMMMMNNmy++`
 sNMMMMMMMMMMMMMMMMMMMMMMMmmNMMMMMMNho::o.
 :yMMMMMMMMMMMMMNho+sydNNNNNNNmysso/` -//
  /dMMMMMMMMMMMMMs-  ````````..``
   .oMMMMMMMMMMMMNs`               ./y:`
     +dNMMNMMMMMMMmy`          ``./ys.
      `/hMMMMMMMMMMMNo-``    `.+yy+-`
        `-/hmNMNMMMMMMmmddddhhy/-`
            `-+oooyMMMdsoo+/:.
EOF
        ;;
        
       
things to know, set color was stupid confusing at fist but here is how it works
-+ for PacBSD the colors 1 7 and 3 are set into order of 1 2 and 3. which means anything that comes after ${c1} will render as color 1, which is ansii color 1. anything that comes after ${c2} will render as color 7 however

the ansii colors go like this

black       =     0
red         =     1
green       =     2
yellow      =     3
blue        =     4
purple      =     5
cyan        =     6
dark grey   =     7
light grey  =     8

more on colors at https://en.wikipedia.org/wiki/ANSI_escape_code#8-bit
