% 生成示例数据
n = 10;  % 组数

% 具体的10个数值，替代随机生成
true_values = [35, 84, 36, 81, 85, 36, 34, 83, 35, 84];  % 真实值
measurement_values = [35, 82, 35, 80, 82, 35, 34, 82, 35, 82];  % 测量值

% 计算测量误差
measurement_errors = abs(true_values - measurement_values);

% 绘制误差图
figure;
hold on;

% 画出真实值的特殊形状点
scatter(1:n, true_values, 50, 'k', 'filled', 'Marker', '^', 'DisplayName', 'The actual number of plants', 'LineWidth', 2);  % 修改：将绿色改为黑色

% 画出测量值的特殊形状点
scatter(1:n, measurement_values, 50, 'r', 'filled', 'Marker', 'v', 'DisplayName', 'Estimate the number of plants', 'LineWidth', 2);  % 修改：将红色改为黑色

% 画出测量值与真实值之间的红色线
for i = 1:n
    line_h = plot([i, i], [true_values(i), measurement_values(i)], '-k', 'LineWidth', 1);  % 修改：将绿色改为黑色
    
    % 添加黑色点往坐标轴画一条垂线
    plot([i, i], [measurement_values(i), 0], '--k', 'LineWidth', 1, 'HandleVisibility', 'off');  % 修改：将绿色改为黑色，并禁用图例显示
    
    % 在点旁边显示其数值
    text(i-0.2, true_values(i), sprintf('%d', true_values(i)), 'VerticalAlignment', 'bottom', 'HorizontalAlignment', 'right', 'Color', 'k', 'FontSize', 14);  % 修改：将绿色改为黑色
    text(i+0.2, measurement_values(i), sprintf('%d', measurement_values(i)), 'VerticalAlignment', 'bottom', 'HorizontalAlignment', 'left', 'Color', 'r', 'FontSize', 14);  % 修改：将红色改为黑色
    
    % 将误差线的显示关联到图例
    set(get(get(line_h,'Annotation'),'LegendInformation'),'IconDisplayStyle','off');
end

% 添加图例、标签等
legend('show', 'Location', 'Best', 'FontSize', 14);  % 修改：增加图例字体大小设置
xlabel('Index', 'FontSize', 14);
ylabel('Number', 'FontSize', 14);
title('', 'FontSize', 16);

hold off;
