function [K,t] = sel_move(map, danger, danger_order)
    % 移动
    K = zeros(4000,3); t = 0;
    map_show(map);
    sel_p = zeros(1,27);
    %如果地图中还有人则进行循环
    while(size(find(map==1),1))
        t=t+1; 
        %一个元胞的周围8个位置以及自身位置
        go = [0,-1; 0,1; -1,0; 1,0; 1,1; 1,-1; -1,1; -1,-1; 0,0];
        for i = 1:size(danger_order,1)
            loc_x = danger_order(i,1); 
            loc_y = danger_order(i,2);
            %如果当前位置不是人则跳过
            if map(loc_x,loc_y)~=1 
                continue; 
            end
            danger_max = 0; count = 0;
            %遍历元胞周围
            for x = 1:size(go,1)
                %计算对应位置的坐标
                now_x = loc_x+go(x,1); now_y = loc_y+go(x,2);
                if(map_at(map,now_x,now_y)>1)
                    %找到周围中最大的危险值
                    danger_max = max(danger_max,danger(now_x,now_y));
                end
            end
            for x = 1:size(go,1)
                now_x = loc_x+go(x,1); now_y = loc_y+go(x,2);
                %判断周围位置是否在圆中
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
            %随机选择下一步的目标
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