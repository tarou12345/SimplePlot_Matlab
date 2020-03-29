classdef SimplePlot3DLine
    %PLOT このクラスの概要をここに記述
    %   詳細説明をここに記述
    
    properties
        x
        y
        z
        t
        num2
    end
    
    methods
        function obj = SimplePlot3DLine(num)
            % このクラスのインスタンスを作成
            t = linspace(0, 6*pi, num);
            obj.x = 3 * cos(t);
            obj.y = 1 * sin(t);
            obj.z = 0.01 * t .^ 2;
            obj.t = t;    
        end
        
        function outputArg = plot(obj)
            figure
            hold on
            plot3(obj.x, obj.y, obj.z);
            plot3(obj.x, obj.y, obj.z,'mo');
            xlabel('x');
            ylabel('y');
            zlabel('z');
            grid on
            axis('equal')
        end
    end
end

