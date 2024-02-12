% 创建一些示例数据
x = [41.5, 43.2, 5.7, 6.7, 8.6, 6.4, 20.6, 19.5, 6.2]; % 检测速度ms
y = [65.6, 69.8, 77.4, 81.3, 80.44, 79.1, 71.9, 59.1, 84.2]; % map

% 使用scatter函数绘制散点图，设置不同样式的数据点
figure;

scatter(x(1), y(1), 350, 'Marker', 'o', 'MarkerFaceColor', 'r', 'DisplayName', 'YOLOv3');
hold on;
scatter(x(2), y(2), 350, 'Marker', 's', 'MarkerFaceColor', 'g', 'DisplayName', 'YOLOv4');
scatter(x(3), y(3), 350, 'Marker', '^', 'MarkerFaceColor', 'b', 'DisplayName', 'YOLOv5n');
scatter(x(4), y(4), 350, 'Marker', 'v', 'MarkerFaceColor', 'c', 'DisplayName', 'YOLOv7');
scatter(x(5), y(5), 350, 'Marker', 'd', 'MarkerFaceColor', 'm', 'DisplayName', 'YOLOX');
scatter(x(6), y(6), 350, 'Marker', 'p', 'MarkerFaceColor', 'y', 'DisplayName', 'YOLOv8n');

% 添加两个额外的散点，并使用不同的样式
scatter(x(7), y(7), 350, 'Marker', 'h', 'MarkerFaceColor', 'k', 'DisplayName', 'Faster-RCNN');
scatter(x(8), y(8), 350, 'Marker', '*', 'MarkerFaceColor', 'c', 'DisplayName', 'SSD-vgg');

% 添加最后一个额外的散点，并使用不同的样式
scatter(x(9), y(9), 350, 'Marker', 'x', 'MarkerFaceColor', 'b', 'DisplayName', 'I-YOLOv8');
% 显示图例，并设置字体大小
legend('FontSize', 14);
% 添加标签和标题
xlabel('Detection times (ms)', 'FontSize', 14);
ylabel('Map@0.5 (%)', 'FontSize', 14);
title('Detection speed and Map@0.5', 'FontSize', 14);

% 设置X轴和Y轴的范围
xlim([0, 50]);
ylim([50, 100]);

% 显示图例
legend;

% 保存图形为图像文件（可选）
% saveas(gcf, 'scatter_plot.png');
