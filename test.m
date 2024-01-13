% 圆心坐标
centerX = 0;
centerY = 0;

% 半径大小
radius = 20;
radius1 = 5;

% 生成角度值
theta = linspace(0, 2*pi, 100);

% 将极坐标转换为直角坐标
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

% 绘制大圆
plot(x_large, y_large, 'b');
hold on;

% 绘制小圆
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

% 添加圆心标记
scatter(centerX, centerY, 'r', 'filled'); % 大圆的圆心

scatter(-15, 0, 'r', 'filled'); % 小圆1的圆心
scatter(-5, 0, 'r', 'filled'); % 小圆2的圆心
scatter(5, 0, 'r', 'filled'); % 小圆3的圆心
scatter(15, 0, 'r', 'filled'); % 小圆4的圆心
scatter(0, 15, 'r', 'filled'); % 小圆5的圆心
scatter(0, -15, 'r', 'filled'); % 小圆6的圆心
scatter(10, 10, 'r', 'filled'); % 小圆7的圆心
scatter(10, -10, 'r', 'filled'); % 小圆8的圆心
scatter(-10, 10, 'r', 'filled'); % 小圆9的圆心
scatter(-10, -10, 'r', 'filled'); % 小圆10的圆心

%箭头


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
title('夜光导向瓷砖箭头摆放位置模拟');
xlabel('x');
ylabel('y');
grid on;
