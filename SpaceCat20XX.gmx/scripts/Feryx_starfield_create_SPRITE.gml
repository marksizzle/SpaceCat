randomize();//bsc' gamemaker have an bug.. :"(
/*
Feryx_starfield_create(0,2,1024,1024,100,5);
//normal white stars
horizontal_speed
vertical_speed
horizontal_texture
Vertical_texture
Stars_Layer_density
Stars_Maximal_Size
Snow_Sprite_name_index
Snow_Sprites_index_number

we make an bugfix for yycomplier bcs' is have an bug if you use drae_sprite_ext is come void befor run the choose selector so add crash :/
*/
//speeds
sph=argument0;
spv=argument1;
//texture sizes
hs=argument2;
vs=argument3;
//layers
l1=argument4;
l2=l1;
l3=l1;
l4=l1;
l5=l1;
//for no draw half sprite for the screen!
var sprW=sprite_get_width(argument6);
var sprH=sprite_get_height(argument6);

//Starsizes
starsize=argument5;
//generating the surfaces
sf_1=surface_create(hs,vs);
sf_2=surface_create(hs,vs);
sf_3=surface_create(hs,vs);
sf_4=surface_create(hs,vs);
sf_5=surface_create(hs,vs);
//erase old surfaces
surface_set_target(sf_1);
draw_clear(c_white);
draw_clear_alpha(c_black, 0);
surface_reset_target();
surface_set_target(sf_2);
draw_clear(c_white);
draw_clear_alpha(c_black, 0);
surface_reset_target();
surface_set_target(sf_3);
draw_clear(c_white);
draw_clear_alpha(c_black, 0);
surface_reset_target();
surface_set_target(sf_4);
draw_clear(c_white);
draw_clear_alpha(c_black, 0);
surface_reset_target();
surface_set_target(sf_5);
draw_clear(c_white);
draw_clear_alpha(c_black, 0);
surface_reset_target();
//generated_backgrounds on memory
back1=0;
back2=0;
back3=0;
back4=0;
back5=0;
//GENERATOR
var i,a,b,c,d;

for (i = 0; i < l1; i += 1)
{
    a=random(hs);
    b=random(vs);
    c=100+random(154);
    d=round(random(starsize));
    surface_set_target(sf_1);//Surface
    draw_set_colour(make_colour_rgb(c,c,c));
    var sprsize=random(argument5)/10;
if(random(10)<5){
draw_rectangle(a+d,b+d,a,b,-1)}else{
    draw_sprite_ext(argument6,round(random(argument7)),((random(hs))-sprW)+(sprW/2),((random(vs))-sprH)+(sprH/2),sprsize,sprsize,random(360),c_white,1)
    }
    surface_reset_target();
}
back1=background_create_from_surface(sf_1, 0, 0, hs, vs, true, true);
surface_free(sf_1);
background_index[2]=back1;
/*layer 1 finnis*/
var i,a,b,c,d;

for (i = 0; i < l2; i += 1)
{
    a=random(hs);
    b=random(vs);
    c=100+random(154);
    d=round(random(starsize));
    surface_set_target(sf_1);//Surface
    draw_set_colour(make_colour_rgb(c,c,c));
    var sprsize=random(argument5)/10;
if(random(10)<5){draw_rectangle(a+d,b+d,a,b,-1)}else{
    draw_sprite_ext(argument6,round(random(argument7)),((random(hs))-sprW)+(sprW/2),((random(vs))-sprH)+(sprH/2),sprsize,sprsize,random(360),c_white,1)
    }
    surface_reset_target();
}
back2=background_create_from_surface(sf_2, 0, 0, hs, vs, true, true);
surface_free(sf_2);
background_index[3]=back1;
/*layer 2 finnis*/
var i,a,b,c,d;

for (i = 0; i < l3; i += 1)
{
    a=random(hs);
    b=random(vs);
    c=100+random(154);
    d=round(random(starsize));
    surface_set_target(sf_3);//Surface
    draw_set_colour(make_colour_rgb(c,c,c));
    var sprsize=random(argument5)/10;
if(random(10)<5){draw_rectangle(a+d,b+d,a,b,-1)}else{
    draw_sprite_ext(argument6,round(random(argument7)),((random(hs))-sprW)+(sprW/2),((random(vs))-sprH)+(sprH/2),sprsize,sprsize,random(360),c_white,1)
    }
    surface_reset_target();
}
back3=background_create_from_surface(sf_3, 0, 0, hs, vs, true, true);
surface_free(sf_3);
background_index[4]=back3;
/*layer 3 finnis*/
var i,a,b,c,d;

for (i = 0; i < l4; i += 1)
{
    a=random(hs);
    b=random(vs);
    c=100+random(154);
    d=round(random(starsize));
    surface_set_target(sf_4);//Surface
    draw_set_colour(make_colour_rgb(c,c,c));
    var sprsize=random(argument5)/10;
if(random(10)<5){draw_rectangle(a+d,b+d,a,b,-1)}else{
    draw_sprite_ext(argument6,round(random(argument7)),((random(hs))-sprW)+(sprW/2),((random(vs))-sprH)+(sprH/2),sprsize,sprsize,random(360),c_white,1)
    }
    surface_reset_target();
}
back4=background_create_from_surface(sf_4, 0, 0, hs, vs, true, true);
surface_free(sf_4);
background_index[5]=back4;
/*layer 4 finnis*/
var i,a,b,c,d;

for (i = 0; i < l5; i += 1)
{
    a=random(hs);
    b=random(vs);
    c=100+random(154);
    d=round(random(starsize));
    surface_set_target(sf_5);//Surface
    draw_set_colour(make_colour_rgb(c,c,c));
    var sprsize=random(argument5)/10;
if(random(10)<5){draw_rectangle(a+d,b+d,a,b,-1)}else{
    draw_sprite_ext(argument6,round(random(argument7)),((random(hs))-sprW)+(sprW/2),((random(vs))-sprH)+(sprH/2),sprsize,sprsize,random(360),c_white,1)
    }
    surface_reset_target();
}
back5=background_create_from_surface(sf_5, 0, 0, hs, vs, true, true);
surface_free(sf_5);
background_index[6]=back5;
/*layer 5 finnis*/
Feryx_starfield_Rand();
draw_set_colour(c_white);
//check is stars visible if not is change to true the visible flag!
if (background_visible[2]!=true){background_visible[2] = true;}
if (background_visible[3]!=true){background_visible[3] = true;}
if (background_visible[4]!=true){background_visible[4] = true;}
if (background_visible[5]!=true){background_visible[5] = true;}
if (background_visible[6]!=true){background_visible[6] = true;}
//sd=0;
