module common

import rand

pub struct ID {
pub:
	s string
	b []u8
}

pub fn new_id() ID {
	uuid := rand.uuid_v4()
	return ID{
		s: uuid
		b: uuid.bytes()
	}
}
