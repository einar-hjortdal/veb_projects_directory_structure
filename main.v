module main

import json
import internal.conduit

struct PublicProduct {
	id string
}

fn format_product(p conduit.Product) PublicProduct {
	return PublicProduct{
		id: p.id.s
	}
}

// suppose this is the presentation of database objects to a public frontend
fn main() {
	products := conduit.get_products(4)
	mut res := []PublicProduct{len: products.len}
	for i := 0; i < res.len; i++ {
		res[i] = format_product(products[i])
	}
	public := json.encode(res)
	println(public)

	conduit.get_product_errors() or {println(err)}
}
