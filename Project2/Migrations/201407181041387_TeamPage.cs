namespace Project2.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class TeamPage : DbMigration
    {
        public override void Up()
        {
            DropForeignKey("dbo.Projects", "TeamId", "dbo.Teams");
            DropForeignKey("dbo.TeamStudents", "Team_TeamId", "dbo.Teams");
            DropForeignKey("dbo.TeamStudents", "Student_StudentId", "dbo.Students");
            DropIndex("dbo.Projects", new[] { "TeamId" });
            DropIndex("dbo.TeamStudents", new[] { "Team_TeamId" });
            DropIndex("dbo.TeamStudents", new[] { "Student_StudentId" });
            DropTable("dbo.Teams");
            DropTable("dbo.TeamStudents");
        }
        
        public override void Down()
        {
            CreateTable(
                "dbo.TeamStudents",
                c => new
                    {
                        Team_TeamId = c.Int(nullable: false),
                        Student_StudentId = c.Int(nullable: false),
                    })
                .PrimaryKey(t => new { t.Team_TeamId, t.Student_StudentId });
            
            CreateTable(
                "dbo.Teams",
                c => new
                    {
                        TeamId = c.Int(nullable: false, identity: true),
                        TeamName = c.String(nullable: false, maxLength: 50),
                        AdminId = c.String(),
                    })
                .PrimaryKey(t => t.TeamId);
            
            CreateIndex("dbo.TeamStudents", "Student_StudentId");
            CreateIndex("dbo.TeamStudents", "Team_TeamId");
            CreateIndex("dbo.Projects", "TeamId");
            AddForeignKey("dbo.TeamStudents", "Student_StudentId", "dbo.Students", "StudentId", cascadeDelete: true);
            AddForeignKey("dbo.TeamStudents", "Team_TeamId", "dbo.Teams", "TeamId", cascadeDelete: true);
            AddForeignKey("dbo.Projects", "TeamId", "dbo.Teams", "TeamId", cascadeDelete: true);
        }
    }
}
