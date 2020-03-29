classdef SimplePlot3DScatter
    %PLOT ���̃N���X�̊T�v�������ɋL�q
    %   �ڍא����������ɋL�q
    
    properties
        x
        y
        z
        t
    end
    
    methods
        function obj = SimplePlot3DScatter(num)
            % ���̃N���X�̃C���X�^���X���쐬
            t = linspace(0, 6*pi, num);
            obj.x = 3 * cos(t);
            obj.y = 1 * sin(t);
            obj.z = 0.01 * t .^ 2;
            obj.t = t;    
        end
        
        function outputArg = plot(obj)
            figure
            plot3(obj.x, obj.y, obj.z);
            xlabel('x');
            ylabel('y');
            zlabel('z');
            grid on
            axis('equal')
        end
        
        function outputArg = scatter3(obj)
            figure
            scatter3(obj.x, obj.y, obj.z, 'mo');
            xlabel('x');
            ylabel('y');
            zlabel('z');
            grid on
            axis('equal')
        end

        function outputArg = plotAndScatter3(obj)
            figure
            hold on
            plot3(obj.x, obj.y, obj.z);
            scatter3(obj.x, obj.y, obj.z, 'mo');
            xlabel('x');
            ylabel('y');
            zlabel('z');
            grid on
            axis('equal')
        end
    end
end

