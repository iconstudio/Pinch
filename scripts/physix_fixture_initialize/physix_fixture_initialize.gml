/// @description physix_fixture_initialize()
/// @function physix_fixture_initialize

var fixture = physics_fixture_create()

physics_fixture_set_awake(fixture, true)
physics_fixture_set_collision_group(fixture, 0)

return fixture
