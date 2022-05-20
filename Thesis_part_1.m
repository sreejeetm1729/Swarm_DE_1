N = 5;
p = rand(2,N);
pstore=[];
r_s = 2;
dt = 0.1;
k=[50;50];
nIT = 100;
plot_update(:,:,:)=zeros(2,N);
for it=1:nIT
    pu=[];
    %pstore=[pstore p];
    plot_update(:,:,it)=p;
    for i=1:N
        check=swarm_interaction(p,N,r_s);
        update=update_swarm(p,k,check,i);
        pu=[pu update];
        for j=1:N
            p(:,j)=p(:,j)+ update * dt;
        end
    end
end
c=1:N;
scatter(plot_update(1,1,1),plot_update(2,1,1),c);
%q=[plot_update(1,1,1),plot_update(2,1,1)];
colormap(gca,'winter')
for kl = 2:30 %loop
    for jl=1:N
        %q=[plot_update(1,jl,kl),plot_update(2,jl,kl)];
        scatter(plot_update(1,jl,kl),plot_update(2,jl,kl),c);
        hold on
        xlim([0 50])
        ylim([-10 50])
        colormap(gca,'winter')
        hold on
    end
    %hold on8
    pause(0.1)
end