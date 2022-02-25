#include <boost/lambda/lambda.hpp>
#include <iostream>
#include <iterator>
#include <algorithm>
#include <Eigen/Dense>
 
using Eigen::MatrixXd;

int main()
{

  MatrixXd m(2,2);
  m(0,0) = 3;
  m(1,0) = 2.5;
  m(0,1) = -1;
  m(1,1) = m(1,0) + m(0,1);
  std::cout << m << std::endl;

  using namespace boost::lambda;
  typedef std::istream_iterator<int> in;

  std::cout << "Hello World" << std::endl;

  std::for_each(
      in(std::cin), in(), std::cout << (_1 * 3) << " ");
  std::cout << std::endl;
}