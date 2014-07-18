namespace Project2.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class MaterialsChange3 : DbMigration
    {
        public override void Up()
        {
            RenameColumn(table: "dbo.Materials", name: "AdvertisementID", newName: "Advertisement_AdvertisementID");
            RenameColumn(table: "dbo.Materials", name: "ProjectID", newName: "Project_ProjectID");
            RenameColumn(table: "dbo.Materials", name: "CourseID", newName: "Course_CourseID");
        }
        
        public override void Down()
        {
            RenameColumn(table: "dbo.Materials", name: "Course_CourseID", newName: "CourseID");
            RenameColumn(table: "dbo.Materials", name: "Project_ProjectID", newName: "ProjectID");
            RenameColumn(table: "dbo.Materials", name: "Advertisement_AdvertisementID", newName: "AdvertisementID");
        }
    }
}
