classdef SimplePlot2D
    %PLOT ���̃N���X�̊T�v�������ɋL�q
    %   �ڍא����������ɋL�q
    
    properties
        x
        y
    end
    
    methods
        function obj = SimplePlot2D(x,y)
            % ���̃N���X�̃C���X�^���X���쐬
            obj.x = x;
            obj.y = y;
        end
        
        function outputArg = plot(obj)
            figure
            x = obj.x;
            y = obj.y;
            plot(x,y);
            xlabel('x');
            ylabel('y');
            grid on
        end
    end
end

