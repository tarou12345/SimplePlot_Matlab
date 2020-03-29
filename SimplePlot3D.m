classdef SimplePlot3D
    %PLOT ���̃N���X�̊T�v�������ɋL�q
    %   �ڍא����������ɋL�q
    
    properties
        x
        y
        z
    end
    
    methods
        function obj = SimplePlot3D(x,y,z)
            % ���̃N���X�̃C���X�^���X���쐬
            obj.x = x;
            obj.y = y;
            obj.z = z;
        end
        
        function outputArg = plot(obj)
            figure
            x = obj.x;
            y = obj.y;
            z = obj.z;
            plot3(x,y,z);
            xlabel('x');
            ylabel('y');
            zlabel('z');
            grid on
        end
    end
end

