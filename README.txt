//////////////////////////////////////////////////////////////////

//connect to internet (wifi)
nmcli device wifi list
nmcli device wifi connect "esm el wifi" password "code"

//open a photo
sxiv /path

//take a screenshot
grim /path/name of the photo

//PDF
mupdf filename.pdf
/////////////////////////////////////////////////////////////////

Coding 
//to compile an SDL code for game you need to write
this:
gcc -o ExeName CodeName.c `sdl2-config --cflags --libs`
gcc -o game1 game1.c `sdl2-config --cflags --libs` -lSDL2_image
gcc -o game1 game1.c `sdl2-config --cflags --libs` -lSDL2_image -lSDL2_ttf
