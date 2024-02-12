txtFilePathv3 = 'yolov3.txt';
txtFilePathv4 = 'yolov4.txt';
txtFilePathv5 = 'yolov5syaml+imgsz1280-mapdata.txt';
txtFilePathv7 = 'yolov7+imgsz1280-map.txt';
txtFilePathX = 'yoloX.txt';
txtFilePathv8 = 'yolov8syaml+imgsz1280-mapdata.txt';
txtFilePathssd = 'vgg.txt';
txtFilePathrcnn = 'fasterrcnn.txt';
txtFilePathme = 'improved-v8.txt';

% 请替换下面的数据
yolov3 = load(txtFilePathv3);
yolov4 = load(txtFilePathv4);
yolov5n = load(txtFilePathv5);
yolov7 = load(txtFilePathv7);
yolovx = load(txtFilePathX);
yolov8n = load(txtFilePathv8);
rcnn = load(txtFilePathrcnn);
ssd = load(txtFilePathssd);
Iyolo8 = load(txtFilePathme);

epoch_num = 401;
epochs = 1:epoch_num; % 假设epoch从1开始递增

% 绘制曲线图
figure;

% 绘制YOLOv3曲线
h1 = plot(epochs, yolov3 * 100, '-b', 'LineWidth', 2);
hold on;

% 找到YOLOv3曲线中的最大值及其位置
[max_yolov3, idx_yolov3] = max(yolov3 * 100);
scatter(epochs(idx_yolov3), max_yolov3, 100, 'Marker', 'o', 'MarkerFaceColor', 'r');
%text(epochs(idx_yolov3), max_yolov3, ['  ', num2str(max_yolov3, '%.2f')], 'VerticalAlignment', 'bottom', 'HorizontalAlignment', 'left', 'Color', 'r');

% 绘制YOLOv4曲线（以下同理，可以继续添加其他曲线）
[max_yolov4, idx_yolov4] = max(yolov4 * 100);
scatter(epochs(idx_yolov4), max_yolov4, 100, 'Marker', 'o', 'MarkerFaceColor', 'r');

[max_yolov5n, idx_yolov5n] = max(yolov5n * 100);
scatter(epochs(idx_yolov5n), max_yolov5n, 100, 'Marker', 'o', 'MarkerFaceColor', 'r');

[max_yolov7, idx_yolov7] = max(yolov7 * 100);
scatter(epochs(idx_yolov7), max_yolov7, 100, 'Marker', 'o', 'MarkerFaceColor', 'r');

[max_yolovx, idx_yolovx] = max(yolovx * 100);
scatter(epochs(idx_yolovx), max_yolovx, 100, 'Marker', 'o', 'MarkerFaceColor', 'r');

[max_yolov8n, idx_yolov8n] = max(yolov8n * 100);
scatter(epochs(idx_yolov8n), max_yolov8n, 100, 'Marker', 'o', 'MarkerFaceColor', 'r');

[max_rcnn, idx_rcnn] = max(rcnn * 100);
scatter(epochs(idx_rcnn), max_rcnn, 100, 'Marker', 'o', 'MarkerFaceColor', 'r');

[max_ssd, idx_ssd] = max(ssd * 100);
scatter(epochs(idx_ssd), max_ssd, 100, 'Marker', 'o', 'MarkerFaceColor', 'r');

[max_Iyolo8, idx_Iyolo8] = max(Iyolo8 * 100);
scatter(epochs(idx_Iyolo8), max_Iyolo8, 100, 'Marker', 'o', 'MarkerFaceColor', 'r');


h2 = plot(epochs, yolov4 * 100, '-r', 'LineWidth', 2);
h3 = plot(epochs, yolov5n * 100, '-g', 'LineWidth', 2);
h4 = plot(epochs, yolov7 * 100, '-c', 'LineWidth', 2);
h5 = plot(epochs, yolovx * 100, '-k', 'LineWidth', 2);
h6 = plot(epochs, yolov8n * 100, '-y', 'LineWidth', 2);

h7 = plot(epochs, rcnn * 100, '-.', 'LineWidth', 2, 'Color', [0.7 0.2 0.1]);
h8 = plot(epochs, ssd * 100, '--', 'LineWidth', 2, 'Color', [0.2 0.7 0.1]);
h9 = plot(epochs, Iyolo8 * 100, ':', 'LineWidth', 2, 'Color', [0.9 0.6 0.2']);
% ... 可以添加更多模型的绘制语句

% 添加图例、标签等
legend([h1, h2, h3, h4, h5, h6, h7, h8, h9], 'YOLOv3', 'YOLOv4', 'YOLOv5n', 'YOLOv7', 'YOLOX', 'YOLOv8n', 'Faster-RCNN', 'SSD-vgg', 'I-YOLOv8', 'FontSize', 12);
xlabel('Training epochs', 'FontSize', 14);
ylabel('MAP@0.5', 'FontSize', 14);
axis([0 400 50 100]);

% 如果需要保存图像，可以使用以下代码
% saveas(gcf, 'MAP曲线图.png');
