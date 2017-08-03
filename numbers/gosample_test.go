package numbers

import (
	"testing"

	"github.com/stretchr/testify/assert"
)

func TestNumbers(t *testing.T) {
	assert := assert.New(t)
	assert.Equal(One(), 1, "Expected 1")
	assert.Equal(Two(), 2, "Expected 2")
	assert.Equal(Three(), 3, "Expected 3")
}
