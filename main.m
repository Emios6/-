%������
clc; clear;
tic
map = map_read();
colormap([0.8 0.8 0.8;1 1 1;1 0 0;0 1 1;0 1 1]);
%�����ͼ��ÿ���ط���Σ�ն�
danger = cal_danger(map);
%Σ�ն�����
danger_order = cal_danger_oreder(danger);
%�����
map = add_people(map, 300);
[K,t] = sel_move(map, danger, danger_order);
toc
