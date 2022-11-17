function sys = add_joint_simple(sys, body_name, coord_name, value)
    arguments
        sys (1,1) struct
        body_name (1,1) string
        coord_name (1,1) string
        value (1,1) double = 0
    end
    check_body_exists(sys, body_name)

    if coord_name == "x"
        c_id = 1;
    elseif coord_name == "y"
        c_id = 2;
    elseif coord_name == "fi"
        c_id = 3;
    else
        error("Unknown coordinate name %s!", coord_name);
    end

    j = struct();
    j.body = body_name;
    j.coord_id = c_id;
    j.coord_value = value;

    sys.joints.simple = [sys.joints.simple, j];
end