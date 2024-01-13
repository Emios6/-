function danger_order = cal_danger_oreder(danger)
    % 将危险度进行排序
    n = numel(find(danger~=-1));
    danger_order = zeros(n,3);
    k = 1;
    for i = 1:size(danger,1)
        for j = 1:size(danger,2)
            if(danger(i,j)~=-1)
                danger_order(k,1) = i;
                danger_order(k,2) = j;
                danger_order(k,3) = danger(i,j);
                k = k + 1;
            end
        end
    end
    [~, pos] = sort(danger_order(:,3));
    danger_order = danger_order(pos,1:2);
end