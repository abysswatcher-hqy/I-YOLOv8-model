% 设置矩形的行数和列数
rows = 14;
cols = 4;

% 创建一个图形窗口
figure;

% 初始化颜色数组
colors = [0 1 0; 0.75 1 0.75; 1 1 0; 1 0.65 0; 1 0 0]; % 对应绿色、浅绿色、黄色、橙色、红色的RGB值

% 设置横向和纵向的间隔
horizontalSpacing = 0.1; % 调整横向间隔
verticalSpacing = 0.1; % 调整纵向间隔

% 遍历每个小矩形
for i = 1:rows
    for j = 1:cols
        % 随机选择颜色
        colorIndex = randi(size(colors, 1));
        color = colors(colorIndex, :);
        
        % 计算小矩形的位置和大小
        x = (j - 1) * (1 + horizontalSpacing); % 考虑横向间隔
        y = (rows - i) * (1.55 + verticalSpacing); % 考虑纵向间隔
        width = 1.2; % 宽度调整为1.2
        height = 1.6; % 高度调整为2
        
        % 绘制小矩形
        rectangle('Position', [x, y, width, height], 'FaceColor', color, 'EdgeColor', 'k');
    end
end

% 设置坐标轴
axis equal;
axis off;

% 设置图形标题
title('');
