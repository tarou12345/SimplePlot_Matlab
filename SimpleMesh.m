classdef SimpleMesh
    %PLOT ���̃N���X�̊T�v�������ɋL�q
    %   �ڍא����������ɋL�q
    
    properties
        % �s��ł��邽�ߑ啶���Ɂ@
        % Z��X1,X2�̊֐��ł��邱�Ƃ��������߂ɂ�����x,y�ƕ\������
        X1
        X2
        Z
        num % �O���b�h�̖��x
        view_x1 
        view_x2 
    end
    
    methods
       %% �C���X�^���X
        function obj = SimpleMesh(num)
            x1 = linspace(-pi, pi, num);
            x2 = linspace(-10, 16, num);
            [X1, X2] = meshgrid(x1, x2);
            Z = cos(X1).*X2;
            
            obj.X1 = X1;
            obj.X2 = X2;
            obj.Z = Z;
            obj.num = num;
            
            % figure�֘A�̐ݒ�@�����F�ꏊ�̕ύX���l��
            figure 
            xlabel('x_1')
            ylabel('y_1')
            zlabel('z = f(x_1, x_2)')
            
            % view�̃f�t�H���g�ݒ�
            % mesh�쐬
            mesh(obj.X1, obj.X2, obj.Z)
            [obj.view_x1, obj.view_x2] = view
        end
        
       %% Get�֌W
        function outputArg = getX1(obj)
            outputArg = obj.X1;
        end

        function outputArg = getX2(obj)
            outputArg = obj.X2;
        end
        
        function outputArg = getZ(obj)
            outputArg = obj.Z;
        end
        
        function outputArg = getNum(obj)
            outputArg = obj.num;
        end

        function outputArg = getView(obj)
            outputArg = [obj.view_x1 obj.view_x2];
        end
        
       %% �\�����@
        % �����F view�𖈉�ݒ肷����@�́H
        
        function mesh(obj)
            mesh(obj.X1, obj.X2, obj.Z)
            %view([view_x1 view_x2])            
        end
        
        function surf(obj)
            surf(obj.X1, obj.X2, obj.Z)
            view([view_x1 view_x2])            
        end
        
        function surfWithInterp(obj)
            surf(obj.X1, obj.X2, obj.Z)
            shading interp
            view([view_x1 view_x2])            
        end
        
        function surfc(obj)
            surfc(obj.X1, obj.X2, obj.Z)
            shading interp
            view([view_x1 view_x2])            
        end
        
        function contour(obj)
            contour(obj.X1, obj.X2, obj.Z)
            view([view_x1 view_x2])            
        end
        
        function contourf(obj)
            contourf(obj.X1, obj.X2, obj.Z)
            view([view_x1 view_x2])            
        end
        
       %% view�p�x
        function outputArg = view(obj, view_x1, view_x2)
            view([view_x1 view_x2])
            obj.view_x1 = view_x1;
            obj.view_x2 = view_x2;
        end
        
        function outputArg = viewRotate(obj, rotateNum)
            [view_x1 view_x2] = view;
            
        end
        
        
       %% map�֌W
        function outputArg = colorMap(obj, map)
            colormap (map)
            colorbar
        end
        
        function outputArg = colorMapJet(obj, jetNum)
            colormap (jet(jetNum))
            colorbar
        end
        
    end
end

