classdef SimplePlot3D
    %PLOT このクラスの概要をここに記述
    %   詳細説明をここに記述
    
    properties
        x
        y
        z
    end
    
    methods
        function obj = SimplePlot3D(x,y,z)
            % このクラスのインスタンスを作成
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

