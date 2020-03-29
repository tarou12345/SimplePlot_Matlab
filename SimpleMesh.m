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
            %hold on % メモ：指定するとviewが変わるため一時コメントアウト
            xlabel('x_1')
            ylabel('y_1')
            zlabel('z = f(x_1, x_2)')
            
            % mesh作成
            mesh(obj.X1, obj.X2, obj.Z)
            
            % view 方向の取得
            % メモ：　x1 x2 ではなくHor(水平)　Ver(垂直)とすべきか
            [obj.view_x1, obj.view_x2] = view;
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
        % メモ： viewを毎回設定しているのはよくない気がする
        
        function mesh(obj)
            [obj.view_x1, obj.view_x2] = view;
            mesh(obj.X1, obj.X2, obj.Z)
            view([obj.view_x1, obj.view_x2])            
        end
        
        function surf(obj)
            [obj.view_x1, obj.view_x2] = view;
            surf(obj.X1, obj.X2, obj.Z)
            view([obj.view_x1, obj.view_x2])            
        end
        
        function surfWithInterp(obj)
            [obj.view_x1, obj.view_x2] = view;
            surf(obj.X1, obj.X2, obj.Z)
            shading interp
            view([obj.view_x1, obj.view_x2])            
        end
        
        function surfc(obj)
            [obj.view_x1, obj.view_x2] = view;
            surfc(obj.X1, obj.X2, obj.Z)
            shading interp
            view([obj.view_x1, obj.view_x2])            
        end
        
        function contour(obj)
            [obj.view_x1, obj.view_x2] = view;
            contour(obj.X1, obj.X2, obj.Z)
            view([obj.view_x1, obj.view_x2])            
        end
        
        function contourf(obj)
            [obj.view_x1, obj.view_x2] = view;
            contourf(obj.X1, obj.X2, obj.Z)
            view([obj.view_x1, obj.view_x2])            
        end
        
       %% view角度
        function view(obj, view_x1, view_x2)
            view([view_x1 view_x2])
            obj.view_x1 = view_x1;
            obj.view_x2 = view_x2;
        end
        
        % 回転動作のデモ
        function rotate(obj, rotateNum)
            for i=1:rotateNum
                pause(0.01)
                [obj.view_x1, obj.view_x2] = view;
                obj.view_x1 = obj.view_x1 + 1;
                obj.view_x2 = obj.view_x2 + 1;
                view([obj.view_x1, obj.view_x2])
            end
        end
        
        function rotateX1(obj, rotateNum)
            for i=1:rotateNum
                pause(0.01)
                [obj.view_x1, obj.view_x2] = view;
                obj.view_x1 = obj.view_x1 + 1;
                view([obj.view_x1, obj.view_x2])
            end
        end
        
        function rotateX2(obj, rotateNum)
            for i=1:rotateNum
                pause(0.01)
                [obj.view_x1, obj.view_x2] = view;
                obj.view_x2 = obj.view_x2 + 1;
                view([obj.view_x1, obj.view_x2])
            end
        end
        
       %% map関係
        function colorMap(obj, map)
            colormap (map)
            colorbar
        end
        
        function colorMapJet(obj, jetNum)
            colormap (jet(jetNum))
            colorbar
        end
        
       %% 表面に線を描く
        function lineOnSurface(obj)
            x1_line = linspace(-1 ,1 ,20);
            x2_line = linspace(0, 10, 20);
            z_line = cos(x1_line).*x2_line;
           
            hold on
            plot3(x1_line, x2_line, z_line, 'm', 'LineWidth', 2)
        end
       
    end
end

