function f = forces(sys)
%FORCES Get force vector from the system
f = zeros(3 * length(sys.bodies), 1);
for i = 1:length(sys.bodies)
    f(body_idx(i)) = [sys.bodies(i).mass * sys.gravity; 
        0];
end

