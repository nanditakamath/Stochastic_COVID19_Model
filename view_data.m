% Plotting Actual Data
% ------------------------------------

function []= view_data()

    global x y I
    global f1

    f1=figure;
    plot(x:y,I(x:y),'-k');
    hold on;
    legend('Actual');
    title('Actual data + Models');
    xlabel('#Days');
    ylabel('Infected population');
    
end