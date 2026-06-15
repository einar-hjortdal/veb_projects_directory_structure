module record

import common

type ID = common.ID

pub struct Product {
pub:
	id ID
}

// suppose this is a database read operation
pub fn get_product() Product {
	return Product{
		id: common.new_id()
	}
}
