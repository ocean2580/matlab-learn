#### normal

disp(n)

num2str(num)

strcat(str1,str2,...)

A = input('prompt');

末尾加分号，不显示运行结果



#### sum

E = [1,2; 3,4; 5,6; 7,8]

a = sum(E)	% 按列相加

a = sum(E,2)	% 按行相加

a = sum(sum(E))	% 整个求和

**E(:)**	%  按列显示



#### special

A(i,j)

A(i,:)	% i行向量

A(:,j)	% j列向量

A([i1,i2],:)	% i1,i2行向量

A(i1:i2,:)	% i1到i2行向量

[i, j] = size(A)



A = [1,2,3; 4,5,6]

B = **repmat**(A,i,j)	% (repeat matrix)以A为子元素平铺 i*j 



A/B = A*inv(B)

A .* B, A ./ B	% 对应元素之间

A^2 = A*A

A .^ 2 = A .* A



E = **eig**(A)	% 特征值

[V, D] = eig(A)	% 特征值对角矩阵D，特征向量V



ind = find(X)	% 非0元素索引(按列)

[i, j] = find(X)	% 行列



A > 0 ~ logical矩阵



#### example

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













