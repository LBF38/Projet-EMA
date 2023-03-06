function best_candidate = affiche_correlation(correlation)
    %affiche_correlation - Affiche la correlation et renvoie la meilleure correlation
    %
    % Syntax: best_candidate = affiche_correlation(correlation)
    %
    % Cette fonction permet de comparer plusieurs correlations et de renvoyer les meilleures candidats correspondants.
    [RK, IK] = sort(max(abs(correlation), [], 2), 'descend');
    figure
    plot((0:size(correlation, 2) - 1), correlation(IK(1), :), 'r')
    hold on

    if IK(1) == 1
        plot((0:size(correlation, 2) - 1), correlation(2:end, :), 'b')
    else

        if IK(1) == 16
            plot((0:size(correlation, 2) - 1), correlation(1:end - 1, :), 'b')
        else
            plot((0:size(correlation, 2) - 1), correlation(1:IK(1) - 1, :), 'b')
            plot((0:size(correlation, 2) - 1), correlation(IK(1) + 1:end, :), 'b')
        end

    end

    best_candidate = IK(1) - 1;
end