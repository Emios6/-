function danger = cal_danger(map) 
    % ��ʼ�����ж�Ϊ-1
    danger = -ones(size(map));
    % ���㵽���ڵľ���
    for sign = [3 4]
        [a,b] = find(map==sign);
        danger = bfs(map,danger,[a(1),b(1)]);
    end
    %һ��Ԫ���������ҵ��ĸ�����
    go = [0,-1; 0,1; -1,0; 1,0];
    %����
    for ua = 1:size(map,1)
        for ub = 1:size(map,2)
            if(map(ua,ub)>=0)
                flag = 0;
                for k=size(go,1)
                    va=ua+go(k,1); vb=ub+go(k,2);
                    if(map_at(map,va,vb)==0)
                        flag=1;
                        break;
                    end
                end
                if(flag)
                    danger(ua,ub)=danger(ua,ub)+0;
                end
            end
        end
    end
    xlswrite('C:\Users\wkb\Desktop\danger.xlsx',danger,1);
end
