/*
Feryx_starfield_create_MULTIColor(0,0,1024,1024,30,5);
//colorized stars FULL RANDOM MULTIPLE COLOR

horizontal_speed
vertical_speed
horizontal_texture
Vertical_texture
Stars_density
Stars_Maximal_Size
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

//Starsizes
starsize=argument5;
//Clear old surface
clearr=1
//generating with surfaces

sf_1=surface_create(hs,vs);
sf_2=surface_create(hs,vs);
sf_3=surface_create(hs,vs);
sf_4=surface_create(hs,vs);
sf_5=surface_create(hs,vs);
//erase old surfaces
surface_set_target(sf_1);
draw_clear(c_white);
draw_clear_alpha(c_white, 1);
surface_reset_target();
surface_set_target(sf_2);
draw_clear(c_white);
draw_clear_alpha(c_white, 1);
surface_reset_target();
surface_set_target(sf_3);
draw_clear(c_white);
draw_clear_alpha(c_white, 1);
surface_reset_target();
surface_set_target(sf_4);
draw_clear(c_white);
draw_clear_alpha(c_white, 1);
surface_reset_target();
surface_set_target(sf_5);
draw_clear(c_white);
draw_clear_alpha(c_white, 1);
surface_reset_target();
//generated_backgrounds on memory
back1=0;
back2=0;
back3=0;
back4=0;
back5=0;
//GENERATOR
var i,a,b,c,d;
randomize()
for (i = 0; i < l1; i += 1)
{
    a=random(hs);
    b=random(vs);
    c=make_colour_hsv(random(255),220+random(25),255);
    d=round(random(starsize));
    surface_set_target(sf_1);//Surface
        draw_set_colour(c);
    draw_rectangle(a+d,b+d,a,b,-1)
    surface_reset_target();
}
back1=background_create_from_surface(sf_1, 0, 0, hs, vs, true, true);
surface_free(sf_1);
background_index[2]=back1;
/*layer 1 finnis*/
var i,a,b,c,d;
randomize()
for (i = 0; i < l2; i += 1)
{
    a=random(hs);
    b=random(vs);
    
    c=make_colour_hsv(random(255),220+random(25),255);
    
    d=round(random(starsize));
    surface_set_target(sf_2);//Surface
        draw_set_colour(c);
    draw_rectangle(a+d,b+d,a,b,-1)
    surface_reset_target();
}
back2=background_create_from_surface(sf_2, 0, 0, hs, vs, true, true);
surface_free(sf_2);
background_index[3]=back1;
/*layer 2 finnis*/
var i,a,b,c,d;
randomize()
for (i = 0; i < l3; i += 1)
{
    a=random(hs);
    b=random(vs);
    
    c=make_colour_hsv(random(255),220+random(25),255);
    
    d=round(random(starsize));
    surface_set_target(sf_3);//Surface
        draw_set_colour(c);
    draw_rectangle(a+d,b+d,a,b,-1)
    surface_reset_target();
}
back3=background_create_from_surface(sf_3, 0, 0, hs, vs, true, true);
surface_free(sf_3);
background_index[4]=back3;
/*layer 3 finnis*/
var i,a,b,c,d;
randomize()
for (i = 0; i < l4; i += 1)
{
    a=random(hs);
    b=random(vs);
   
    c=make_colour_hsv(random(255),220+random(25),255);
    
    d=round(random(starsize));
    surface_set_target(sf_4);//Surface
        draw_set_colour(c);
    draw_rectangle(a+d,b+d,a,b,-1)
    surface_reset_target();
}
back4=background_create_from_surface(sf_4, 0, 0, hs, vs, true, true);
surface_free(sf_4);
background_index[5]=back4;
/*layer 4 finnis*/
var i,a,b,c,d;
randomize()
for (i = 0; i < l5; i += 1)
{
    a=random(hs);
    b=random(vs);
    
    c=make_colour_hsv(random(255),220+random(25),255);
    
    d=round(random(starsize));
    surface_set_target(sf_5);//Surface
    draw_set_colour(c);
    draw_rectangle(a+d,b+d,a,b,-1)
    surface_reset_target();
}
back5=background_create_from_surface(sf_5, 0, 0, hs, vs, true, true);
surface_free(sf_5);
background_index[6]=back5;
/*layer 5 finnis*/
draw_set_colour(c_white);
background_x[2]=round(random(hs))
background_y[2]=round(random(vs))

background_x[3]=round(random(hs))
background_y[3]=round(random(vs))

background_x[4]=round(random(hs))
background_y[4]=round(random(vs))

background_x[5]=round(random(hs))
background_y[5]=round(random(vs))

background_x[6]=round(random(hs))
background_y[6]=round(random(vs))
Feryx_starfield_Rand();
//check is stars visible if not is change to true the visible flag!
if (background_visible[2]!=true){background_visible[2] = true;}
if (background_visible[3]!=true){background_visible[3] = true;}
if (background_visible[4]!=true){background_visible[4] = true;}
if (background_visible[5]!=true){background_visible[5] = true;}
if (background_visible[6]!=true){background_visible[6] = true;}
//sd=0;
