namespace Project2.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class a : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.Posts",
                c => new
                    {
                        PostId = c.Int(nullable: false, identity: true),
                        PostText = c.String(nullable: false, maxLength: 500),
                        PostDate = c.DateTime(nullable: false),
                        AuthorId = c.String(),
                    })
                .PrimaryKey(t => t.PostId);
            
            CreateIndex("dbo.Comments", "PostId");
            AddForeignKey("dbo.Comments", "PostId", "dbo.Posts", "PostId", cascadeDelete: true);
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.Comments", "PostId", "dbo.Posts");
            DropIndex("dbo.Comments", new[] { "PostId" });
            DropTable("dbo.Posts");
        }
    }
}
