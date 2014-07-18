namespace Project2.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class MaterialsChange2 : DbMigration
    {
        public override void Up()
        {
            DropForeignKey("dbo.Materials", "AdvertisementId", "dbo.Advertisements");
            DropForeignKey("dbo.Materials", "ProjectId", "dbo.Projects");
            DropForeignKey("dbo.Materials", "CourseId", "dbo.Courses");
            DropIndex("dbo.Materials", new[] { "AdvertisementId" });
            DropIndex("dbo.Materials", new[] { "ProjectId" });
            DropIndex("dbo.Materials", new[] { "CourseId" });
            AlterColumn("dbo.Materials", "CourseID", c => c.Int());
            AlterColumn("dbo.Materials", "AdvertisementID", c => c.Int());
            AlterColumn("dbo.Materials", "ProjectID", c => c.Int());
            CreateIndex("dbo.Materials", "AdvertisementID");
            CreateIndex("dbo.Materials", "ProjectID");
            CreateIndex("dbo.Materials", "CourseID");
            AddForeignKey("dbo.Materials", "AdvertisementID", "dbo.Advertisements", "AdvertisementID");
            AddForeignKey("dbo.Materials", "ProjectID", "dbo.Projects", "ProjectID");
            AddForeignKey("dbo.Materials", "CourseID", "dbo.Courses", "CourseID");
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.Materials", "CourseID", "dbo.Courses");
            DropForeignKey("dbo.Materials", "ProjectID", "dbo.Projects");
            DropForeignKey("dbo.Materials", "AdvertisementID", "dbo.Advertisements");
            DropIndex("dbo.Materials", new[] { "CourseID" });
            DropIndex("dbo.Materials", new[] { "ProjectID" });
            DropIndex("dbo.Materials", new[] { "AdvertisementID" });
            AlterColumn("dbo.Materials", "ProjectID", c => c.Int());
            AlterColumn("dbo.Materials", "AdvertisementID", c => c.Int());
            AlterColumn("dbo.Materials", "CourseID", c => c.Int());
            CreateIndex("dbo.Materials", "CourseId");
            CreateIndex("dbo.Materials", "ProjectId");
            CreateIndex("dbo.Materials", "AdvertisementId");
            AddForeignKey("dbo.Materials", "CourseId", "dbo.Courses", "CourseID");
            AddForeignKey("dbo.Materials", "ProjectId", "dbo.Projects", "ProjectID");
            AddForeignKey("dbo.Materials", "AdvertisementId", "dbo.Advertisements", "AdvertisementID");
        }
    }
}
