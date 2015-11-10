package ShoppingCart;

import java.util.ArrayList;

import javax.persistence.EntityManager;


public class TrialClass {

	public static void main(String[] args) {
		ProductDB db = new ProductDB();
		
		ArrayList<Product> us = db.getAllProducts();
		if(!us.isEmpty() && us != null){
			for (Product u : us){
				System.out.println(u.getProdname() + " " + u.getPrice());
			}
		}else{
			System.out.println("no data");
		}
	}


}
