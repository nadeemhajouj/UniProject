namespace Project2.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class mess : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.Messages",
                c => new
                    {
                        MessId = c.Int(nullable: false, identity: true),
                        MessHeader = c.String(nullable: false, maxLength: 100),
                        MessBody = c.String(nullable: false, maxLength: 1000),
                        MessDate = c.DateTime(nullable: false),
                        To = c.String(),
                        From = c.String(),
                    })
                .PrimaryKey(t => t.MessId);
            
        }
        
        public override void Down()
        {
            DropTable("dbo.Messages");
        }
    }
}
