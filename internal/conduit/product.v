module conduit

import record

pub type Product = record.Product

// suppose this is an orchestration of several database operations
pub fn get_products(l int) []Product {
	mut res := []Product{len: l}
	for i := 0; i < res.len; i++ {
		res[i] = record.get_product()
	}
	return res
}

pub fn get_product_errors() ! {
	return record.get_product_error()
}
