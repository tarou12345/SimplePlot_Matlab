classdef TestClass < handle
    
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
        
        %% ���\�b�h
        function obj = test(obj,x)
            obj.plusX(x);
        end
        
        %% �V�����C���X�^���X��������
        function result = test2(obj,x)
            obj.plusX(x);
            result = obj;
        end
        
        
        %%
        function x = get.x(obj)
            x = obj.x;
        end
        
        function set.x(obj, x)
            obj.x = x;
        end
        
        function plusX(obj, x)
            obj.x = obj.x + x;
        end
    end
end

