function map = add_people(map, num_people)
    % 获取地图中值为2的位置
    [i, j] = find(map == 2);
    
    % 随机选择num_people个位置添加人
    idx = randperm(length(i), num_people);
    
    % 将选定位置的值改为1
    for k = 1:num_people
        map(i(idx(k)), j(idx(k))) = 1;
    end
end
