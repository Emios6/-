function map = add_people(map, num_people)
    % ��ȡ��ͼ��ֵΪ2��λ��
    [i, j] = find(map == 2);
    
    % ���ѡ��num_people��λ�������
    idx = randperm(length(i), num_people);
    
    % ��ѡ��λ�õ�ֵ��Ϊ1
    for k = 1:num_people
        map(i(idx(k)), j(idx(k))) = 1;
    end
end
