function val = get(obj, name)
switch name
    case 'mass'
        val = obj.mass;
    case 'position'
        val = obj.position;
    case 'velocity'
        val = obj.velocity;
    otherwise
        error(['Invalid property:' name])
end
end