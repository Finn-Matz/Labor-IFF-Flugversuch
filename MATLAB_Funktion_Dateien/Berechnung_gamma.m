function gamma = X(Zeit, v)
wg = 1/3.281*1000/Zeit;
v = v*0.514444;

gamma = asin(wg/v)*180/pi;
end

