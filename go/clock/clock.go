// Package clock does stuff
package clock

import "fmt"

const testVersion = 4

// Clock struct
type Clock struct {
	hour   int
	minute int
}

// New creates a clock
func New(hour, minute int) Clock {
	clockHour := (hour + minute/60) % 24
	clockMinute := minute % 60
	clock := Clock{
		hour:   clockHour,
		minute: clockMinute,
	}
	return clock
}

func (clock Clock) String() string {
	return fmt.Sprintf("%02d:%02d", clock.hour, clock.minute)
}

// Add minutes to clock
func (Clock) Add(minutes int) Clock {
	return Clock{}
}
