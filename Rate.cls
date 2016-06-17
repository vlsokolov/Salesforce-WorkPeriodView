public class Rate {

    public String Name{set;get;}
    public String RateId{set;get;}
    public Integer Revenue{set;get;}
    public Integer Margin{set;get;}
    
    public Rate(String Name, String RateId, Integer Revenue, Integer Margin)
    {
        this.Name = Name;
        this.RateId = RateId;
        this.Revenue = Revenue;
        this.Margin = Margin;
    }
}