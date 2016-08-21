function dx=RigidBody(t,x)

    alpha=0.51;

    dx=[x(2)*x(3)
        -x(1)*x(3)
        -alpha*x(1)*x(2)];

end