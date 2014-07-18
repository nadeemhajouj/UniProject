namespace Project2.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class stdCourses : DbMigration
    {
        public override void Up()
        {
            DropForeignKey("dbo.Courses", "Student_StudentId", "dbo.Students");
            DropIndex("dbo.Courses", new[] { "Student_StudentId" });
            AddColumn("dbo.StdCourses", "Student_StudentId", c => c.Int());
            CreateIndex("dbo.StdCourses", "Student_StudentId");
            AddForeignKey("dbo.StdCourses", "Student_StudentId", "dbo.Students", "StudentId");
            DropColumn("dbo.Courses", "Student_StudentId");
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
