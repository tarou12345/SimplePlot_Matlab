classdef SimplePlot2D
    %PLOT このクラスの概要をここに記述
    %   詳細説明をここに記述
    
    properties
        x
        y
    end
    
    methods
        function obj = SimplePlot2D(x,y)
            % このクラスのインスタンスを作成
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

