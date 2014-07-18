namespace Project2.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class StudentTeams : DbMigration
    {
        public override void Up()
        {
            
            CreateTable(
                "dbo.Teams",
                c => new
                    {
                        TeamId = c.Int(nullable: false, identity: true),
                        TeamName = c.String(nullable: false, maxLength: 50),
                        AdminId = c.String(),
                    })
                .PrimaryKey(t => t.TeamId);
            
            CreateTable(
                "dbo.TeamStudents",
                c => new
                    {
                        Team_TeamId = c.Int(nullable: false),
                        Student_StudentId = c.Int(nullable: false),
                    })
                .PrimaryKey(t => new { t.Team_TeamId, t.Student_StudentId })
                .ForeignKey("dbo.Teams", t => t.Team_TeamId, cascadeDelete: true)
                .ForeignKey("dbo.Students", t => t.Student_StudentId, cascadeDelete: true)
                .Index(t => t.Team_TeamId)
                .Index(t => t.Student_StudentId);
            
            
        }
        
        public override void Down()
        {
            AddColumn("dbo.Homework", "HomeworkId", c => c.Int(nullable: false, identity: true));
            DropForeignKey("dbo.Projects", "HomId", "dbo.Homework");
            DropForeignKey("dbo.TeamStudents", "Student_StudentId", "dbo.Students");
            DropForeignKey("dbo.TeamStudents", "Team_TeamId", "dbo.Teams");
            DropForeignKey("dbo.Projects", "TeamId", "dbo.Teams");
            DropIndex("dbo.Projects", new[] { "HomId" });
            DropIndex("dbo.TeamStudents", new[] { "Student_StudentId" });
            DropIndex("dbo.TeamStudents", new[] { "Team_TeamId" });
            DropIndex("dbo.Projects", new[] { "TeamId" });
            DropPrimaryKey("dbo.Homework");
            AddPrimaryKey("dbo.Homework", "HomeworkId");
            AlterColumn("dbo.Projects", "HomId", c => c.Int());
            DropColumn("dbo.Homework", "HomId");
            DropTable("dbo.TeamStudents");
            DropTable("dbo.Teams");
            RenameColumn(table: "dbo.Projects", name: "HomId", newName: "Homework_HomeworkId");
            AddColumn("dbo.Projects", "HomId", c => c.Int(nullable: false));
            CreateIndex("dbo.Projects", "Homework_HomeworkId");
            AddForeignKey("dbo.Projects", "Homework_HomeworkId", "dbo.Homework", "HomeworkId");
        }
    }
}
