function [pq] = polysum(p,q)

lenp = length(p);
lenq = length(q);

if lenp < lenq
    pad = lenq - lenp;
    p = [zeros(1,pad) p];
end

if lenq < lenp
    pad = lenp - lenq;
    q = [zeros(1,pad) q];
end

pq = p + q;
return

end
