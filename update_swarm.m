function update = update_swarm(p,target,sum_swarm,i)
kc=0.1;
kr=1;
update=- kc * (p(:,i) - target) + kr * sum_swarm(:,i);
end