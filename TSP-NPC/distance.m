function [ fare ] = distance( coord )
% �� �� �� �� �� �� �� �� �� �� �� �� �� ֮ �� �� �� ��
% fare Ϊ �� �� �� �� �� �� �� coord Ϊ �� �� �� �� �� ��
[ v , m ] = size( coord ) ; % m Ϊ �� �� �� �� ��
fare = zeros( m ) ;
for i = 1 : m % �� �� Ϊ ��
for j = i : m % �� �� Ϊ ��
fare( i , j ) = ( sum( ( coord( : , i ) - coord( : , j ) ) .^ 2 ) ) ^ 0.5 ;
fare( j , i ) = fare( i , j ) ; % �� �� �� �� �� ��
end
end