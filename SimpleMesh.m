classdef SimpleMesh
    %PLOT このクラスの概要をここに記述
    %   詳細説明をここに記述
    
    properties
        % 行列であるため大文字に　
        % ZがX1,X2の関数であることを示すためにあえてx,yと表現せず
        X1
        X2
        Z
        num % グリッドの密度
        view_x1 
        view_x2 
    end
    
    methods
       %% インスタンス
        function obj = SimpleMesh(num)
            x1 = linspace(-pi, pi, num);
            x2 = linspace(-10, 16, num);
            [X1, X2] = meshgrid(x1, x2);
            Z = cos(X1).*X2;
            
            obj.X1 = X1;
            obj.X2 = X2;
            obj.Z = Z;
            obj.num = num;
            
            % figure関連の設定　メモ：場所の変更を考慮
            figure 
            xlabel('x_1')
            ylabel('y_1')
            zlabel('z = f(x_1, x_2)')
            
            % viewのデフォルト設定
            % mesh作成
            mesh(obj.X1, obj.X2, obj.Z)
            [obj.view_x1, obj.view_x2] = view
        end
        
       %% Get関係
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
        
       %% 表現方法
        % メモ： viewを毎回設定する方法は？
        
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
        
       %% view角度
        function outputArg = view(obj, view_x1, view_x2)
            view([view_x1 view_x2])
            obj.view_x1 = view_x1;
            obj.view_x2 = view_x2;
        end
        
        function outputArg = viewRotate(obj, rotateNum)
            [view_x1 view_x2] = view;
            
        end
        
        
       %% map関係
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

