%主函数
clc; clear;
tic
map = map_read();
colormap([0.8 0.8 0.8;1 1 1;1 0 0;0 1 1;0 1 1]);
%计算地图中每个地方的危险度
danger = cal_danger(map);
%危险度排序
danger_order = cal_danger_oreder(danger);
%添加人
map = add_people(map, 300);
[K,t] = sel_move(map, danger, danger_order);
toc
