package numbers

import ("testing")

func TestOne(t *testing.T) {
	var res int = One()
	if res != 1 {
		t.Error ("Expected 1, got", res)
	}
}

func TestTwo(t *testing.T) {
	var res int = Two()
	if res != 2 {
		t.Error ("Expected 2, got", res)
	}
}

func TestThree(t *testing.T) {
	var res int = Three()
	if res != 3 {
		t.Error ("Expected 3, got", res)
	}
}
