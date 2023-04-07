W = [10, 5, 2, 1, 4, 6, 7, 3, 9, 2];
DG = sparse([1,1,2,2,3,4,4,5,5,5],[2,5,5,3,4,3,1,2,3,4],W);
[dist, path, pred] = graphshortestpath(DG,1,3); % 1 -> 3

% node, view
point_name = ["c1","c2","c3","c4","c5"];
h = view(biograph(DG,point_name,'ShowWeights','on'));

% color, width
edges = getedgesbynodeid(h,get(h.Nodes(path), 'ID'));
set(edges, 'LineColor', [1 0 0])
set(edges, 'LineWidth', 2)