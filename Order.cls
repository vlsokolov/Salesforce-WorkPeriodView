public class Order {

    public String Name{set;get;}
    public String CompanyId{set;get;}
    public String OrderId{set;get;}
    
    public Order(String Name, String CompanyId, String OrderId)
    {
        this.Name = Name;
        this.CompanyId = CompanyId;
        this.OrderId = OrderId;
    }
}