classdef TestClass
    %TESTCLASS ���̃N���X�̊T�v�������ɋL�q
    %   �ڍא����������ɋL�q
    
    properties
        x
        y
    end
    
    methods
        function obj = TestClass(x,y)
            % �C���X�^���X
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

