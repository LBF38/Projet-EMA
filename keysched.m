function w = keysched(key)
    global S_box;
    global m;
    global polyaes;

    subkey = uint32(key);
    rcon = gf(1, m, polyaes);

    for r = 1:10
        % Rotword
        subword = subkey([2 3 4 1], end);
        % Subword
        subword = S_box(subword + 1);
        % Rcon
        subword(1) = bitxor(subword(1), rcon.x);
        w(:, 1, r) = bitxor(subkey(:, 1), subword);
        subword = w(:, 1, r);

        for wd = 2:4
            w(:, wd, r) = bitxor(subkey(:, wd), subword);
            subword = w(:, wd, r);
        end

        subkey = w(:, :, r);
        rcon = gf(2, m, polyaes) * rcon;
    end

end