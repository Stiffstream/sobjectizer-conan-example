#include <so_5/all.hpp>

class hello_actor final : public so_5::agent_t {
public:
	using so_5::agent_t::agent_t;

	void so_evt_start() override {
		std::cout << "Hello, World" << std::endl;
		so_deregister_agent_coop_normally();
	}
};

int main() {

	so_5::launch([](so_5::environment_t & env) {
		env.register_agent_as_coop(env.make_agent<hello_actor>());
	});

	return 0;
}

