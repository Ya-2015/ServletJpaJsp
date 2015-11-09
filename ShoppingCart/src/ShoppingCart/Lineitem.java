package ShoppingCart;

import java.io.Serializable;

import javax.persistence.*;

import java.math.BigDecimal;


/**
 * The persistent class for the LINEITEM database table.
 * 
 */
@Entity
@Table(name="LINEITEM", schema="testuserdb")
@NamedQuery(name="Lineitem.findAll", query="SELECT l FROM Lineitem l")
public class Lineitem implements Serializable {
	private static final long serialVersionUID = 1L;

	@Id
	@GeneratedValue(strategy=GenerationType.SEQUENCE, generator="lineitem_seq")
    @SequenceGenerator(schema="testuserdb", name="lineitem_seq", sequenceName="lineitem_seq", allocationSize=1)
	private long purchaseno;

	private String image;

	private double price;

	private double productcost;

	private String productname;

	private BigDecimal quantity;

	public Lineitem() {
	}

	public long getPurchaseno() {
		return this.purchaseno;
	}

	public void setPurchaseno(long purchaseno) {
		this.purchaseno = purchaseno;
	}

	public String getImage() {
		return this.image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public double getPrice() {
		return this.price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public double getProductcost() {
		return this.productcost;
	}

	public void setProductcost(double productcost) {
		this.productcost = productcost;
	}

	public String getProductname() {
		return this.productname;
	}

	public void setProductname(String productname) {
		this.productname = productname;
	}

	public BigDecimal getQuantity() {
		return this.quantity;
	}

	public void setQuantity(BigDecimal quantity) {
		this.quantity = quantity;
	}

}