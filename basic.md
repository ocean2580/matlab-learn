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



B = transpose(A)	% 转置

d = det(A)	% 行列式

#### 多项式

```matlab
p = [4 3 2 1 6]
a = poly2sym(p)	% 高次到低次系数
q = polyder(p)	% 求导

```

