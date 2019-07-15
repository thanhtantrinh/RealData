namespace Narato.Demo.SignalR.Data.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class Initial : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.Departures",
                c => new
                    {
                        Time = c.String(),
                        Destination = c.String(),
                        FlightNo = c.String(),
                        Gate = c.String(),
                        Remarks = c.String(),
                        Id = c.Int(nullable: false, identity: true),
                    })
                .PrimaryKey(t => t.Id);
            
        }
        
        public override void Down()
        {
            DropTable("dbo.Departures");
        }
    }
}
