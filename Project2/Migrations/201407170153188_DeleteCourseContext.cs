namespace Project2.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class DeleteCourseContext : DbMigration
    {
        public override void Up()
        {
            DropForeignKey("dbo.StudentCourses", "Student_StudentId", "dbo.Students");
            DropForeignKey("dbo.StudentCourses", "Course_CourseID", "dbo.Courses");
            DropForeignKey("dbo.TeacherCourses", "Teacher_TeacherId", "dbo.Teachers");
            DropForeignKey("dbo.TeacherCourses", "Course_CourseID", "dbo.Courses");
            DropForeignKey("dbo.Advertisements", "CourseID", "dbo.Courses");
            DropIndex("dbo.StudentCourses", new[] { "Student_StudentId" });
            DropIndex("dbo.StudentCourses", new[] { "Course_CourseID" });
            DropIndex("dbo.TeacherCourses", new[] { "Teacher_TeacherId" });
            DropIndex("dbo.TeacherCourses", new[] { "Course_CourseID" });
            DropIndex("dbo.Advertisements", new[] { "CourseID" });
            DropTable("dbo.Advertisements");
            DropTable("dbo.Courses");
            DropTable("dbo.Students");
            DropTable("dbo.Teachers");
            DropTable("dbo.Projects");
            DropTable("dbo.StudentCourses");
            DropTable("dbo.TeacherCourses");
        }
        
        public override void Down()
        {
            CreateTable(
                "dbo.TeacherCourses",
                c => new
                    {
                        Teacher_TeacherId = c.Int(nullable: false),
                        Course_CourseID = c.Int(nullable: false),
                    })
                .PrimaryKey(t => new { t.Teacher_TeacherId, t.Course_CourseID });
            
            CreateTable(
                "dbo.StudentCourses",
                c => new
                    {
                        Student_StudentId = c.Int(nullable: false),
                        Course_CourseID = c.Int(nullable: false),
                    })
                .PrimaryKey(t => new { t.Student_StudentId, t.Course_CourseID });
            
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
                .PrimaryKey(t => t.AdvertisementID);
            
            CreateIndex("dbo.Advertisements", "CourseID");
            CreateIndex("dbo.TeacherCourses", "Course_CourseID");
            CreateIndex("dbo.TeacherCourses", "Teacher_TeacherId");
            CreateIndex("dbo.StudentCourses", "Course_CourseID");
            CreateIndex("dbo.StudentCourses", "Student_StudentId");
            AddForeignKey("dbo.Advertisements", "CourseID", "dbo.Courses", "CourseID");
            AddForeignKey("dbo.TeacherCourses", "Course_CourseID", "dbo.Courses", "CourseID", cascadeDelete: true);
            AddForeignKey("dbo.TeacherCourses", "Teacher_TeacherId", "dbo.Teachers", "TeacherId", cascadeDelete: true);
            AddForeignKey("dbo.StudentCourses", "Course_CourseID", "dbo.Courses", "CourseID", cascadeDelete: true);
            AddForeignKey("dbo.StudentCourses", "Student_StudentId", "dbo.Students", "StudentId", cascadeDelete: true);
        }
    }
}
