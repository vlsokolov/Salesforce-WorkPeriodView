public class WorkPeriod {
    
    public String Name{set;get;}
    public String Id{set;get;}
    public String OrderId{set;get;}
    public String RateId{set;get;}
    public Date StartDate{set;get;}
    public Date CloseDate{set;get;}
    
    public WorkPeriod(String Name, String Id, String OrderId, String RateId, Date StartDate, Date CloseDate)
    {
        this.Name = Name;
        this.Id = Id;
        this.OrderId = OrderId;
        this.RateId = RateId;
        this.StartDate = StartDate;
        this.CloseDate = CloseDate;
    }

}