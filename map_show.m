function [] = map_show(map)
    % ��ʾ��ͼ
    imshow(map,'InitialMagnification','fit','DisplayRange',[0,4]);
    %imagesc(map);
    hold on;
end