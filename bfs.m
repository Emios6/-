function danger = bfs(map,danger,st)
    n = numel(find(map~=0));
    lef=n; rig=n; que = zeros(n*2,2); % 初始化双端队列
    que(rig,:)=st; rig = rig+1; 
   danger(st(1),st(2)) = 0;
    while(lef<rig)
        ua=que(lef,1); ub=que(lef,2); lef=lef+1; 
        go=[0,-1; 0,1; -1,0; 1,0];
        for i = 1:size(go,1)
            va=ua+go(i,1); vb=ub+go(i,2);
            if(map_at(map,va,vb)>=1)
                nd = danger(ua,ub)+2;
                if(danger(ua,ub)==0 && map(ua,ub)==map(va,vb))
                    nd = 0;
                end
                if(danger(va,vb)==-1 || danger(va,vb)>nd)
                    danger(va,vb) = nd;
                    if(nd==0)                           
                        lef=lef-1; que(lef,:)=[va,vb];
                    else
                        que(rig, :)=[va,vb]; rig=rig+1;
                    end
                end
            end
        end
    end
    
end