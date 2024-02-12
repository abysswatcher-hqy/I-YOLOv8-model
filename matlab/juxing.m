% ���þ��ε�����������
rows = 14;
cols = 4;

% ����һ��ͼ�δ���
figure;

% ��ʼ����ɫ����
colors = [0 1 0; 0.75 1 0.75; 1 1 0; 1 0.65 0; 1 0 0]; % ��Ӧ��ɫ��ǳ��ɫ����ɫ����ɫ����ɫ��RGBֵ

% ���ú��������ļ��
horizontalSpacing = 0.1; % ����������
verticalSpacing = 0.1; % ����������

% ����ÿ��С����
for i = 1:rows
    for j = 1:cols
        % ���ѡ����ɫ
        colorIndex = randi(size(colors, 1));
        color = colors(colorIndex, :);
        
        % ����С���ε�λ�úʹ�С
        x = (j - 1) * (1 + horizontalSpacing); % ���Ǻ�����
        y = (rows - i) * (1.55 + verticalSpacing); % ����������
        width = 1.2; % ��ȵ���Ϊ1.2
        height = 1.6; % �߶ȵ���Ϊ2
        
        % ����С����
        rectangle('Position', [x, y, width, height], 'FaceColor', color, 'EdgeColor', 'k');
    end
end

% ����������
axis equal;
axis off;

% ����ͼ�α���
title('');
