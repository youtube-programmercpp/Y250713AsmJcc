// 条件分岐命令の例 https://www.youtube.com/@ProgrammerCpp
#include <iostream>
#include <stdint.h>
extern "C" uintptr_t asm_equal       (uintptr_t lhs, uintptr_t rhs);
extern "C" uintptr_t asm_less_than   (uintptr_t lhs, uintptr_t rhs);
extern "C" uintptr_t asm_greater_than(uintptr_t lhs, uintptr_t rhs);
extern "C" uintptr_t c_equal         (uintptr_t lhs, uintptr_t rhs);
extern "C" uintptr_t c_less_than     (uintptr_t lhs, uintptr_t rhs);
extern "C" uintptr_t c_greater_than  (uintptr_t lhs, uintptr_t rhs);
static void test(uintptr_t lhs, uintptr_t rhs)
{
	std::cout
		<< lhs << " == " << rhs << " -> " "[asm] " << asm_equal       (lhs, rhs) << ", [C] " << c_equal       (lhs, rhs) << std::endl
		<< lhs << " <  " << rhs << " -> " "[asm] " << asm_less_than   (lhs, rhs) << ", [C] " << c_less_than   (lhs, rhs) << std::endl
		<< lhs << " >  " << rhs << " -> " "[asm] " << asm_greater_than(lhs, rhs) << ", [C] " << c_greater_than(lhs, rhs) << std::endl
		<< std::endl
		;
}
int main()
{
	test(1U, 2U);
	test(2U, 2U);
	test(3U, 2U);
}
