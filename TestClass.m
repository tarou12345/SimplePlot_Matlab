classdef TestClass
    %TESTCLASS このクラスの概要をここに記述
    %   詳細説明をここに記述
    
    properties
        x
        y
    end
    
    methods
        function obj = TestClass(x,y)
            % インスタンス
            obj.x = x;
            obj.y = y;
        end
        
        function outputArg = getX(obj)
            outputArg = obj.x;
        end
        
        function plot(obj)
            figure
            plot(obj.x, obj.y);
        end
    end
end

