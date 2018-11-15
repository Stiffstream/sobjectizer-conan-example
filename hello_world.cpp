#include <so_5/all.hpp>

int main()
{
	so_5::launch([](so_5::environment_t & env) {
		env.introduce_coop([](so_5::coop_t & coop) {
			auto a = coop.define_agent();
			a.on_start([&coop] {
				std::cout << "Hello, World" << std::endl;
				coop.deregister_normally();
			});
		});
	});

	return 0;
}

