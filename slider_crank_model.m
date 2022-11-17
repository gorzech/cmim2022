% Globally we have a complete multibody system
% It must contain bodies, joints, analysis settings
sys = make_system();

% Bodies

% What do we need to describe our body?
% location, orientation, name 

sys = add_body(sys, "ground");
sys = add_body(sys, "crank", [-0.1, 0.05], -deg2rad(30));
sys = add_body(sys, "link", [-0.5, 0.05], deg2rad(15));
sys = add_body(sys, "slider", [-0.7, 0]);

% Joints - kinematic (revolute and simple)

