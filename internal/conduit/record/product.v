module record

import common
import errors

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

pub fn get_product_error() ! {
	return errors.SomeError{}
}
