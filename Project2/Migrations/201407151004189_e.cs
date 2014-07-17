namespace Project2.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class e : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.Advertisements",
                c => new
                    {
                        AdvertisementID = c.Int(nullable: false, identity: true),
                        AdvertisementHeader = c.String(nullable: false, maxLength: 100),
                        AdvertisementBody = c.String(nullable: false, maxLength: 1000),
                        AdvertisementDateTime = c.DateTime(nullable: false),
                        AdvertisementYear = c.Int(nullable: false),
                        ImagePath = c.String(),
                        CourseID = c.Int(),
                    })
                .PrimaryKey(t => t.AdvertisementID)
                .ForeignKey("dbo.Courses", t => t.CourseID)
                .Index(t => t.CourseID);
            
            CreateTable(
                "dbo.Courses",
                c => new
                    {
                        CourseID = c.Int(nullable: false, identity: true),
                        CourseYear = c.Int(nullable: false),
                        CourseName = c.String(nullable: false, maxLength: 50),
                        CourseDescription = c.String(nullable: false),
                        CourseDepartement = c.String(),
                        CourseSemester = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.CourseID);
            
            CreateTable(
                "dbo.Students",
                c => new
                    {
                        StudentId = c.Int(nullable: false, identity: true),
                        UserId = c.String(),
                        FirstName = c.String(nullable: false, maxLength: 20),
                        LastName = c.String(nullable: false, maxLength: 20),
                        AcademicYear = c.Int(nullable: false),
                        BirthDate = c.DateTime(nullable: false),
                        Email = c.String(),
                        ACMPoints = c.Int(nullable: false),
                        Bio = c.String(),
                    })
                .PrimaryKey(t => t.StudentId);
            
            CreateTable(
                "dbo.Teachers",
                c => new
                    {
                        TeacherId = c.Int(nullable: false, identity: true),
                        UserId = c.String(),
                        FirstName = c.String(nullable: false, maxLength: 20),
                        LastName = c.String(nullable: false, maxLength: 20),
                    })
                .PrimaryKey(t => t.TeacherId);
            
            CreateTable(
                "dbo.Projects",
                c => new
                    {
                        ProjectID = c.Int(nullable: false, identity: true),
                        ProjectName = c.String(nullable: false, maxLength: 100),
                        ProjectDescription = c.String(nullable: false, maxLength: 1000),
                        ProjectYear = c.Int(nullable: false),
                        ImagePath = c.String(),
                    })
                .PrimaryKey(t => t.ProjectID);
            
            CreateTable(
                "dbo.StudentCourses",
                c => new
                    {
                        Student_StudentId = c.Int(nullable: false),
                        Course_CourseID = c.Int(nullable: false),
                    })
                .PrimaryKey(t => new { t.Student_StudentId, t.Course_CourseID })
                .ForeignKey("dbo.Students", t => t.Student_StudentId, cascadeDelete: true)
                .ForeignKey("dbo.Courses", t => t.Course_CourseID, cascadeDelete: true)
                .Index(t => t.Student_StudentId)
                .Index(t => t.Course_CourseID);
            
            CreateTable(
                "dbo.TeacherCourses",
                c => new
                    {
                        Teacher_TeacherId = c.Int(nullable: false),
                        Course_CourseID = c.Int(nullable: false),
                    })
                .PrimaryKey(t => new { t.Teacher_TeacherId, t.Course_CourseID })
                .ForeignKey("dbo.Teachers", t => t.Teacher_TeacherId, cascadeDelete: true)
                .ForeignKey("dbo.Courses", t => t.Course_CourseID, cascadeDelete: true)
                .Index(t => t.Teacher_TeacherId)
                .Index(t => t.Course_CourseID);
            
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.Advertisements", "CourseID", "dbo.Courses");
            DropForeignKey("dbo.TeacherCourses", "Course_CourseID", "dbo.Courses");
            DropForeignKey("dbo.TeacherCourses", "Teacher_TeacherId", "dbo.Teachers");
            DropForeignKey("dbo.StudentCourses", "Course_CourseID", "dbo.Courses");
            DropForeignKey("dbo.StudentCourses", "Student_StudentId", "dbo.Students");
            DropIndex("dbo.Advertisements", new[] { "CourseID" });
            DropIndex("dbo.TeacherCourses", new[] { "Course_CourseID" });
            DropIndex("dbo.TeacherCourses", new[] { "Teacher_TeacherId" });
            DropIndex("dbo.StudentCourses", new[] { "Course_CourseID" });
            DropIndex("dbo.StudentCourses", new[] { "Student_StudentId" });
            DropTable("dbo.TeacherCourses");
            DropTable("dbo.StudentCourses");
            DropTable("dbo.Projects");
            DropTable("dbo.Teachers");
            DropTable("dbo.Students");
            DropTable("dbo.Courses");
            DropTable("dbo.Advertisements");
        }
    }
}
