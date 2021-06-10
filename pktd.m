function fx = pktd(x)
if x == pi/2
    fx = 0;
elseif x~=pi/2
fx = x - tan(x);
end
end