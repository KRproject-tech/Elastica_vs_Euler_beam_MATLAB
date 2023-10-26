clc
clear all
close all hidden

%% delete
delete( '*.asv')

%% parameters

m0_vec = linspace( 0, 2*pi, 10);
s_vec = linspace( 0, 1, 1000);
m0_vec2 = linspace( 0, pi/4, 10);

%% beam model


%%[0] Elastica beam
r_x = @( s, m_0)( (1./m_0.')*ones(1,length( s)).*sin( m_0.'*s) );
r_y = @( s, m_0)( (1./m_0.')*ones(1,length( s)).*(1 - cos( m_0.'*s)) );

%%[1] Linear beam
r_x_L = @( s, m_0)( s );
r_y_L = @( s, m_0)( m_0.'/2*s.^2 ); 



%% plot

i_ax = 1;


h_fig(1) = figure(1);
h_ax(i_ax) = axes( 'Parent', h_fig(1));

plot( h_ax(i_ax), r_x( s_vec, m0_vec).', r_y( s_vec, m0_vec).', 'r', 'LineWidth', 3)
axis( h_ax(i_ax), 'equal')
xlim( h_ax(i_ax), [ -0.5 1])
ylim( h_ax(i_ax), [ 0 1])


i_ax = i_ax + 1;

h_fig(2) = figure(2);
h_ax(i_ax) = axes( 'Parent', h_fig(2));

plot( h_ax(i_ax), r_x_L( s_vec, m0_vec).', r_y_L( s_vec, m0_vec).', 'b', 'LineWidth', 3)
axis( h_ax(i_ax), 'equal')
xlim( h_ax(i_ax), [ 0 1])
ylim( h_ax(i_ax), [ 0 3])


i_ax = i_ax + 1;



h_fig(3) = figure(3);
h_ax(i_ax) = axes( 'Parent', h_fig(3));

plot( h_ax(i_ax), r_x( s_vec, m0_vec2).', r_y( s_vec, m0_vec2).', 'r-', r_x_L( s_vec, m0_vec2).', r_y_L( s_vec, m0_vec2).', 'b--', 'LineWidth', 2)
axis( h_ax(i_ax), 'equal')
xlim( h_ax(i_ax), [ 0 1])
ylim( h_ax(i_ax), [ 0 0.5])


%% save

fig_name = { 'Elastica', 'Linear', 'Comparisons'};

for ii=1:length( fig_name)
   
    saveas( h_fig(ii), [ './fig/', fig_name{ii}, '.fig'])
end

