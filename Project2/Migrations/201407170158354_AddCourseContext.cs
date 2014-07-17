namespace Project2.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class AddCourseContext : DbMigration
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
                        Author = c.String(),
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
                        CourseSemester = c.Boolean(nullable: false),
                        Student_StudentId = c.Int(),
                    })
                .PrimaryKey(t => t.CourseID)
                .ForeignKey("dbo.Students", t => t.Student_StudentId)
                .Index(t => t.Student_StudentId);
            
            CreateTable(
                "dbo.Homework",
                c => new
                    {
                        HomId = c.Int(nullable: false, identity: true),
                        HomeworkName = c.String(nullable: false, maxLength: 100),
                        HomeworkDesc = c.String(nullable: false, maxLength: 1000),
                        Date = c.String(nullable: false),
                        DueDate = c.String(nullable: false),
                        CourseId = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.HomId)
                .ForeignKey("dbo.Courses", t => t.CourseId, cascadeDelete: true)
                .Index(t => t.CourseId);
            
            CreateTable(
                "dbo.Projects",
                c => new
                    {
                        ProjectID = c.Int(nullable: false, identity: true),
                        ProjectName = c.String(nullable: false, maxLength: 100),
                        ProjectAbstract = c.String(nullable: false, maxLength: 1000),
                        Date = c.Int(nullable: false),
                        ImagePath = c.String(),
                        HomId = c.Int(nullable: false),
                        TeamId = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.ProjectID)
                .ForeignKey("dbo.Homework", t => t.HomId, cascadeDelete: true)
                .Index(t => t.HomId);
            
            CreateTable(
                "dbo.Teachers",
                c => new
                    {
                        TeacherId = c.Int(nullable: false, identity: true),
                        UserId = c.String(),
                        FirstName = c.String(nullable: false, maxLength: 20),
                        LastName = c.String(nullable: false, maxLength: 20),
                        Project_ProjectID = c.Int(),
                    })
                .PrimaryKey(t => t.TeacherId)
                .ForeignKey("dbo.Projects", t => t.Project_ProjectID)
                .Index(t => t.Project_ProjectID);
            
            CreateTable(
                "dbo.Questions",
                c => new
                    {
                        QuesId = c.Int(nullable: false, identity: true),
                        QuesHeader = c.String(nullable: false, maxLength: 200),
                        QuesBody = c.String(nullable: false, maxLength: 1000),
                        CourseId = c.Int(nullable: false),
                        AuthorId = c.String(),
                    })
                .PrimaryKey(t => t.QuesId)
                .ForeignKey("dbo.Courses", t => t.CourseId, cascadeDelete: true)
                .Index(t => t.CourseId);
            
            CreateTable(
                "dbo.Comments",
                c => new
                    {
                        CommId = c.Int(nullable: false, identity: true),
                        CommText = c.String(nullable: false, maxLength: 500),
                        CommDate = c.DateTime(nullable: false),
                        PostId = c.Int(nullable: false),
                        AuthorId = c.String(),
                        Question_QuesId = c.Int(),
                    })
                .PrimaryKey(t => t.CommId)
                .ForeignKey("dbo.Questions", t => t.Question_QuesId)
                .Index(t => t.Question_QuesId);
            
            CreateTable(
                "dbo.StdCourses",
                c => new
                    {
                        StdCId = c.Int(nullable: false, identity: true),
                        CourseID = c.Int(nullable: false),
                        StdId = c.String(),
                        PracticeGrade = c.Int(nullable: false),
                        ExamGrade = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.StdCId)
                .ForeignKey("dbo.Courses", t => t.CourseID, cascadeDelete: true)
                .Index(t => t.CourseID);
            
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
            DropForeignKey("dbo.Courses", "Student_StudentId", "dbo.Students");
            DropForeignKey("dbo.StdCourses", "CourseID", "dbo.Courses");
            DropForeignKey("dbo.Questions", "CourseId", "dbo.Courses");
            DropForeignKey("dbo.Comments", "Question_QuesId", "dbo.Questions");
            DropForeignKey("dbo.Homework", "CourseId", "dbo.Courses");
            DropForeignKey("dbo.Projects", "HomId", "dbo.Homework");
            DropForeignKey("dbo.Teachers", "Project_ProjectID", "dbo.Projects");
            DropForeignKey("dbo.TeacherCourses", "Course_CourseID", "dbo.Courses");
            DropForeignKey("dbo.TeacherCourses", "Teacher_TeacherId", "dbo.Teachers");
            DropForeignKey("dbo.Advertisements", "CourseID", "dbo.Courses");
            DropIndex("dbo.Courses", new[] { "Student_StudentId" });
            DropIndex("dbo.StdCourses", new[] { "CourseID" });
            DropIndex("dbo.Questions", new[] { "CourseId" });
            DropIndex("dbo.Comments", new[] { "Question_QuesId" });
            DropIndex("dbo.Homework", new[] { "CourseId" });
            DropIndex("dbo.Projects", new[] { "HomId" });
            DropIndex("dbo.Teachers", new[] { "Project_ProjectID" });
            DropIndex("dbo.TeacherCourses", new[] { "Course_CourseID" });
            DropIndex("dbo.TeacherCourses", new[] { "Teacher_TeacherId" });
            DropIndex("dbo.Advertisements", new[] { "CourseID" });
            DropTable("dbo.TeacherCourses");
            DropTable("dbo.Students");
            DropTable("dbo.StdCourses");
            DropTable("dbo.Comments");
            DropTable("dbo.Questions");
            DropTable("dbo.Teachers");
            DropTable("dbo.Projects");
            DropTable("dbo.Homework");
            DropTable("dbo.Courses");
            DropTable("dbo.Advertisements");
        }
    }
}
