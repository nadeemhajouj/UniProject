namespace Project2.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class MaterialsChange1 : DbMigration
    {
        public override void Up()
        {
            RenameColumn(table: "dbo.Materials", name: "Advertisement_AdvertisementID", newName: "AdvertisementId");
            DropColumn("dbo.Materials", "AdverId");
        }
        
        public override void Down()
        {
            AddColumn("dbo.Materials", "AdverId", c => c.Int());
            RenameColumn(table: "dbo.Materials", name: "AdvertisementId", newName: "Advertisement_AdvertisementID");
        }
    }
}
