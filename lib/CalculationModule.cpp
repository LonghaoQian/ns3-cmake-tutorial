#include "CalculationModule.h"
CalculationModule::CalculationModule(const Eigen::MatrixXd& connectionMatrix) : 
    taskDone(false), 
    para(connectionMatrix)
{
    std::cout<<"CalculationModule is instanciated.. \n";
    std::cout<<para<<'\n';
}
CalculationModule::~CalculationModule()
{
    std::cout<<"CalculationModule analysis is destoryed.. \n";
}