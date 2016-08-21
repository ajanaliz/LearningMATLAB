function dx=Lorenz(t,x,params)

    rho=params.rho;
    sigma=params.sigma;
    beta=params.beta;
    
    dx=[sigma*(x(2)-x(1))
        x(1)*(rho-x(3))-x(2)
        x(1)*x(2)-beta*x(3)];

end