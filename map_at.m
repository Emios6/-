function res = map_at(map,a,b)
    % 如果(a,b)在map内,返回map(a,b),否则返回0
    if(a>0&&b>0&&a<=size(map,1)&&b<=size(map,2))
        res = map(a,b);
    else
        res = 0;
    end
end