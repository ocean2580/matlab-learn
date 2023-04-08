```matlab
% 输入判断矩阵
disp('input martrix')
A = [1 1 1 1;
		2 2 2 2;
		3 3 3 3;
		4 4 4 4]

% 1.算数平均求权重
Sum_A = sum(A)
[n, n] = size(A)
SUM_A = repmat(Sum_A, n, 1)
Stand_A = A ./ SUM_A
disp(sum(Stand_A,2)/n)

% 2.几何平均
Product_A = prod(A,2)	% 按行乘
Product_n_A = Product_A .^ (1/n)	% 开方
disp(Product_n_A ./ sum(Product_n_A))

% 3.特征值
[V,D] = eig(A)
Max_eig = max(max(D))	% max(D(:))
[r,c] = find(D == Max_eig, 1)	% 首个
disp(V(:,c) ./ sum(V(:,c)))

% CR一致性比例
CI = (Max_eig - n) / (n-1)
RI = [...]
CR = CI/RI(n)	% RI(0) = 0, 修改一小部分数据
disp(CI)
disp(CR)

if CR<0.10
	disp('...,该判断矩阵A的一致性可以接受')
else
	disp('..., 修改')
end
```













