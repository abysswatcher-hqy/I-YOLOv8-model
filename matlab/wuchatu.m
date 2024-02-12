% ����ʾ������
n = 10;  % ����

% �����10����ֵ������������
true_values = [35, 84, 36, 81, 85, 36, 34, 83, 35, 84];  % ��ʵֵ
measurement_values = [35, 82, 35, 80, 82, 35, 34, 82, 35, 82];  % ����ֵ

% ����������
measurement_errors = abs(true_values - measurement_values);

% �������ͼ
figure;
hold on;

% ������ʵֵ��������״��
scatter(1:n, true_values, 50, 'k', 'filled', 'Marker', '^', 'DisplayName', 'The actual number of plants', 'LineWidth', 2);  % �޸ģ�����ɫ��Ϊ��ɫ

% ��������ֵ��������״��
scatter(1:n, measurement_values, 50, 'r', 'filled', 'Marker', 'v', 'DisplayName', 'Estimate the number of plants', 'LineWidth', 2);  % �޸ģ�����ɫ��Ϊ��ɫ

% ��������ֵ����ʵֵ֮��ĺ�ɫ��
for i = 1:n
    line_h = plot([i, i], [true_values(i), measurement_values(i)], '-k', 'LineWidth', 1);  % �޸ģ�����ɫ��Ϊ��ɫ
    
    % ��Ӻ�ɫ���������ửһ������
    plot([i, i], [measurement_values(i), 0], '--k', 'LineWidth', 1, 'HandleVisibility', 'off');  % �޸ģ�����ɫ��Ϊ��ɫ��������ͼ����ʾ
    
    % �ڵ��Ա���ʾ����ֵ
    text(i-0.2, true_values(i), sprintf('%d', true_values(i)), 'VerticalAlignment', 'bottom', 'HorizontalAlignment', 'right', 'Color', 'k', 'FontSize', 14);  % �޸ģ�����ɫ��Ϊ��ɫ
    text(i+0.2, measurement_values(i), sprintf('%d', measurement_values(i)), 'VerticalAlignment', 'bottom', 'HorizontalAlignment', 'left', 'Color', 'r', 'FontSize', 14);  % �޸ģ�����ɫ��Ϊ��ɫ
    
    % ������ߵ���ʾ������ͼ��
    set(get(get(line_h,'Annotation'),'LegendInformation'),'IconDisplayStyle','off');
end

% ���ͼ������ǩ��
legend('show', 'Location', 'Best', 'FontSize', 14);  % �޸ģ�����ͼ�������С����
xlabel('Index', 'FontSize', 14);
ylabel('Number', 'FontSize', 14);
title('', 'FontSize', 16);

hold off;
