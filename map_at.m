function res = map_at(map,a,b)
    % ���(a,b)��map��,����map(a,b),���򷵻�0
    if(a>0&&b>0&&a<=size(map,1)&&b<=size(map,2))
        res = map(a,b);
    else
        res = 0;
    end
end