% ����һЩʾ������
x = [41.5, 43.2, 5.7, 6.7, 8.6, 6.4, 20.6, 19.5, 6.2]; % ����ٶ�ms
y = [65.6, 69.8, 77.4, 81.3, 80.44, 79.1, 71.9, 59.1, 84.2]; % map

% ʹ��scatter��������ɢ��ͼ�����ò�ͬ��ʽ�����ݵ�
figure;

scatter(x(1), y(1), 350, 'Marker', 'o', 'MarkerFaceColor', 'r', 'DisplayName', 'YOLOv3');
hold on;
scatter(x(2), y(2), 350, 'Marker', 's', 'MarkerFaceColor', 'g', 'DisplayName', 'YOLOv4');
scatter(x(3), y(3), 350, 'Marker', '^', 'MarkerFaceColor', 'b', 'DisplayName', 'YOLOv5n');
scatter(x(4), y(4), 350, 'Marker', 'v', 'MarkerFaceColor', 'c', 'DisplayName', 'YOLOv7');
scatter(x(5), y(5), 350, 'Marker', 'd', 'MarkerFaceColor', 'm', 'DisplayName', 'YOLOX');
scatter(x(6), y(6), 350, 'Marker', 'p', 'MarkerFaceColor', 'y', 'DisplayName', 'YOLOv8n');

% ������������ɢ�㣬��ʹ�ò�ͬ����ʽ
scatter(x(7), y(7), 350, 'Marker', 'h', 'MarkerFaceColor', 'k', 'DisplayName', 'Faster-RCNN');
scatter(x(8), y(8), 350, 'Marker', '*', 'MarkerFaceColor', 'c', 'DisplayName', 'SSD-vgg');

% ������һ�������ɢ�㣬��ʹ�ò�ͬ����ʽ
scatter(x(9), y(9), 350, 'Marker', 'x', 'MarkerFaceColor', 'b', 'DisplayName', 'I-YOLOv8');
% ��ʾͼ���������������С
legend('FontSize', 14);
% ��ӱ�ǩ�ͱ���
xlabel('Detection times (ms)', 'FontSize', 14);
ylabel('Map@0.5 (%)', 'FontSize', 14);
title('Detection speed and Map@0.5', 'FontSize', 14);

% ����X���Y��ķ�Χ
xlim([0, 50]);
ylim([50, 100]);

% ��ʾͼ��
legend;

% ����ͼ��Ϊͼ���ļ�����ѡ��
% saveas(gcf, 'scatter_plot.png');
