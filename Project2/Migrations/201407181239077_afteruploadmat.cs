namespace Project2.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class afteruploadmat : DbMigration
    {
        public override void Up()
        {
           
        }
        
        public override void Down()
        {
            AddColumn("dbo.Courses", "Student_StudentId", c => c.Int());
            DropForeignKey("dbo.StdCourses", "Student_StudentId", "dbo.Students");
            DropIndex("dbo.StdCourses", new[] { "Student_StudentId" });
            DropColumn("dbo.StdCourses", "Student_StudentId");
            CreateIndex("dbo.Courses", "Student_StudentId");
            AddForeignKey("dbo.Courses", "Student_StudentId", "dbo.Students", "StudentId");
        }
    }
}
