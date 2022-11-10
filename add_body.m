function sys = add_body(sys, name, location, orientation)
%ADD_BODY Add single bosy to the multibody system
    arguments
        sys (1,1) struct
        name (1,1) string
        location (2,1) double = [0; 0]
        orientation (1,1) double = 0 
    end
    body = struct("name", name);
    body.location = location;
    body.orientation = orientation;

    if ~isfield(sys, "bodies")
        sys.bodies = body;
    else
        sys.bodies(end + 1) = body;
    end
end

