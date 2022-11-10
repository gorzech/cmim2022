% Globally we have a complete multibody system
% It must contain bodies, joints, analysis settings
sys = make_system();

% Bodies

% What do we need to describe our body?
% location, orientation, name 

body1 = struct("name", "ground");
body1.location = [0; 0];
body1.orientation = 0;

