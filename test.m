% Բ������
centerX = 0;
centerY = 0;

% �뾶��С
radius = 20;
radius1 = 5;

% ���ɽǶ�ֵ
theta = linspace(0, 2*pi, 100);

% ��������ת��Ϊֱ������
x_large = radius * cos(theta) + centerX;
y_large = radius * sin(theta) + centerY;

x_small1 = radius1 * cos(theta) - 15;
y_small1 = radius1 * sin(theta);

x_small2 = radius1 * cos(theta) - 5;
y_small2 = radius1 * sin(theta);

x_small3 = radius1 * cos(theta) + 5;
y_small3 = radius1 * sin(theta);

x_small4 = radius1 * cos(theta) + 15;
y_small4 = radius1 * sin(theta);

x_small5 = radius1 * cos(theta);
y_small5 = radius1 * sin(theta) + 15;

x_small6 = radius1 * cos(theta);
y_small6 = radius1 * sin(theta) - 15;

x_small7 = radius1 * cos(theta) + 10;
y_small7 = radius1 * sin(theta) + 10;

x_small8 = radius1 * cos(theta) + 10;
y_small8 = radius1 * sin(theta) - 10;

x_small9 = radius1 * cos(theta) - 10;
y_small9 = radius1 * sin(theta) + 10;

x_small10 = radius1 * cos(theta) - 10;
y_small10 = radius1 * sin(theta) - 10;

% ���ƴ�Բ
plot(x_large, y_large, 'b');
hold on;

% ����СԲ
plot(x_small1, y_small1, 'r');
plot(x_small2, y_small2, 'r');
plot(x_small3, y_small3, 'r');
plot(x_small4, y_small4, 'r');
plot(x_small5, y_small5, 'r');
plot(x_small6, y_small6, 'r');
plot(x_small7, y_small7, 'r');
plot(x_small8, y_small8, 'r');
plot(x_small9, y_small9, 'r');
plot(x_small10, y_small10, 'r');

% ���Բ�ı��
scatter(centerX, centerY, 'r', 'filled'); % ��Բ��Բ��

scatter(-15, 0, 'r', 'filled'); % СԲ1��Բ��
scatter(-5, 0, 'r', 'filled'); % СԲ2��Բ��
scatter(5, 0, 'r', 'filled'); % СԲ3��Բ��
scatter(15, 0, 'r', 'filled'); % СԲ4��Բ��
scatter(0, 15, 'r', 'filled'); % СԲ5��Բ��
scatter(0, -15, 'r', 'filled'); % СԲ6��Բ��
scatter(10, 10, 'r', 'filled'); % СԲ7��Բ��
scatter(10, -10, 'r', 'filled'); % СԲ8��Բ��
scatter(-10, 10, 'r', 'filled'); % СԲ9��Բ��
scatter(-10, -10, 'r', 'filled'); % СԲ10��Բ��

%��ͷ


quiver(-15, 0, 3, 0, 'r', 'filled', 'LineWidth', 1, 'MaxHeadSize', 10);
quiver(-5, 0, 3, 0, 'r', 'filled', 'LineWidth', 1, 'MaxHeadSize', 10);
quiver(5, 0, 3, 0, 'r', 'filled', 'LineWidth', 1, 'MaxHeadSize', 10);
quiver(15, 0, 3, 0, 'r', 'filled', 'LineWidth', 1, 'MaxHeadSize', 10);

quiver(0, 15, 3, -3, 'r', 'filled', 'LineWidth', 1, 'MaxHeadSize', 10);
quiver(0, -15, 3, 3, 'r', 'filled', 'LineWidth', 1, 'MaxHeadSize', 10);

quiver(10, 10, 3, -3, 'r', 'filled', 'LineWidth', 1, 'MaxHeadSize', 10);
quiver(10, -10, 3, 3, 'r', 'filled', 'LineWidth', 1, 'MaxHeadSize', 10);
quiver(-10, 10, 3, -3, 'r', 'filled', 'LineWidth', 1, 'MaxHeadSize', 10);
quiver(-10, -10, 3, 3, 'r', 'filled', 'LineWidth', 1, 'MaxHeadSize', 10);



axis equal;
title('ҹ�⵼���ש��ͷ�ڷ�λ��ģ��');
xlabel('x');
ylabel('y');
grid on;
