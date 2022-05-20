#ifndef CALCULATIONMODULE_H
#define CALCULATIONMODULE_H
#include<Eigen/Dense>
#include<iostream>
class CalculationModule {
    public:
    CalculationModule(const Eigen::MatrixXd& connectionMatrix);
    ~CalculationModule();
    private:
    bool taskDone{false};
    Eigen::MatrixXd para;
};
#endif