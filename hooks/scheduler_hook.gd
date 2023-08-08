extends Node
class_name SchedulerHook

var _game_timer: Timer
var _transition_timer: Timer
var _conversion_timer: Timer
var _time_elapsed: float = 0
var _sprint_seconds_remaining: float = 0

signal sprint_activated
signal sprint_deactivated

func tick_time() -> float:
	return _game_timer.wait_time

func time_to_next_tick() -> float:
	return _game_timer.time_left if _game_timer != null and not _game_timer.is_stopped() else 0.0

func time_elapsed() -> float:
	return _time_elapsed

func sprint_seconds_remaining() -> float:
	return _sprint_seconds_remaining

func time_to_next_transition() -> float:
	return 0.0 if _transition_timer == null else _transition_timer.wait_time if _transition_timer.is_stopped() else _transition_timer.time_left

func time_conversion_remaining() -> float:
	return 0.0 if _conversion_timer == null else _conversion_timer.wait_time if _conversion_timer.is_stopped() else _conversion_timer.time_left
