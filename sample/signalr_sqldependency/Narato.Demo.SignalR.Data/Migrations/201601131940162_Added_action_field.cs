namespace Narato.Demo.SignalR.Data.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class Added_action_field : DbMigration
    {
        public override void Up()
        {
            AddColumn("dbo.Departures", "Action", c => c.String());
        }
        
        public override void Down()
        {
            DropColumn("dbo.Departures", "Action");
        }
    }
}
