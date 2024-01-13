function [K,t] = sel_move(map, danger, danger_order)
    % �ƶ�
    K = zeros(4000,3); t = 0;
    map_show(map);
    sel_p = zeros(1,27);
    %�����ͼ�л����������ѭ��
    while(size(find(map==1),1))
        t=t+1; 
        %һ��Ԫ������Χ8��λ���Լ�����λ��
        go = [0,-1; 0,1; -1,0; 1,0; 1,1; 1,-1; -1,1; -1,-1; 0,0];
        for i = 1:size(danger_order,1)
            loc_x = danger_order(i,1); 
            loc_y = danger_order(i,2);
            %�����ǰλ�ò�����������
            if map(loc_x,loc_y)~=1 
                continue; 
            end
            danger_max = 0; count = 0;
            %����Ԫ����Χ
            for x = 1:size(go,1)
                %�����Ӧλ�õ�����
                now_x = loc_x+go(x,1); now_y = loc_y+go(x,2);
                if(map_at(map,now_x,now_y)>1)
                    %�ҵ���Χ������Σ��ֵ
                    danger_max = max(danger_max,danger(now_x,now_y));
                end
            end
            for x = 1:size(go,1)
                now_x = loc_x+go(x,1); now_y = loc_y+go(x,2);
                %�ж���Χλ���Ƿ���Բ��
                if(map_at(map,now_x,now_y)>1)
                    for k = 1:danger_max+1-danger(now_x,now_y)
                        count = count+1; 
                        sel_p(count)=x;
                    end
                end
            end
            if(count==0) 
                continue;
            end
            %���ѡ����һ����Ŀ��
            target = sel_p(unidrnd(count));
            now_x = loc_x+go(target,1); 
            now_y = loc_y+go(target,2);

            map(loc_x,loc_y)=2;
            if(map(now_x,now_y)==2)
                map(now_x,now_y)=1;
            end
        end
        map_show(map);
        time=0.5;
        pause(time);
    end
end