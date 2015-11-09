package ShoppingCart;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.TypedQuery;

public class ProductDB {
	
	public ArrayList<Product> getAllProducts(){
		EntityManager em = DBUtil.getEmFactory().createEntityManager();
		List<Product> fd = null;
		
		try {
			String sql = "select p from Product p";
			TypedQuery<Product> q = em.createQuery(sql, Product.class);
			
			fd = q.getResultList();
			
		} catch (Exception e){
			System.out.println(e);
		} finally {
			em.close();
		}
		
		return new ArrayList<Product>(fd);
	}
	
	public Product getProductById(int prodid){
		EntityManager em = DBUtil.getEmFactory().createEntityManager();
		Product fd = null;
		
		try {
			String sql = "select p from Product p where p.prodid = :prodid";
			TypedQuery<Product> q = em.createQuery(sql, Product.class);
			q.setParameter("prodid", prodid);
			
			fd = q.getSingleResult();
			
		} catch (Exception e){
			System.out.println(e);
		} finally {
			em.close();
		}
		
		return fd;
	}
	
	public Lineitem getLineitemById(int purchaseno){
		EntityManager em = DBUtil.getEmFactory().createEntityManager();
		Lineitem fd = null;
		
		try {
			String sql = "select p from Lineitem p where p.purchaseno = :purchaseno";
			TypedQuery<Lineitem> q = em.createQuery(sql, Lineitem.class);
			q.setParameter("purchaseno", purchaseno);
			
			fd = q.getSingleResult();
			
		} catch (Exception e){
			System.out.println(e);
		} finally {
			em.close();
		}
		
		return fd;
	}
	
	public boolean addNewLineitem(Lineitem item){
		boolean isSuccess = false;
		
		EntityManager em = DBUtil.getEmFactory().createEntityManager();
		EntityTransaction trans = em.getTransaction();
		
		trans.begin();
		
		try{
			em.persist(item);
			trans.commit();
			isSuccess = true;
		}catch(Exception e){
			System.out.println(e);
			trans.rollback();
		}finally{
			em.close();
		}
		
		return isSuccess;
	}
	
	public ArrayList<Lineitem> getLineitems(){
		EntityManager em = DBUtil.getEmFactory().createEntityManager();
		List<Lineitem> fd = null;
		
		try {
			String sql = "select p from Lineitem p";
			TypedQuery<Lineitem> q = em.createQuery(sql, Lineitem.class);
			
			fd = q.getResultList();
			
		} catch (Exception e){
			System.out.println(e);
		} finally {
			em.close();
		}
		
		return new ArrayList<Lineitem>(fd);
	}
	
	public void removeLineitem(Lineitem item){
		EntityManager em = DBUtil.getEmFactory().createEntityManager();
		EntityTransaction trans = em.getTransaction();
		
		trans.begin();
		try{
			em.remove(em.merge(item));
			trans.commit();
		}catch(Exception e){
			System.out.println(e);
			trans.rollback();
		}finally{
			em.close();
		}
	}
	
}
