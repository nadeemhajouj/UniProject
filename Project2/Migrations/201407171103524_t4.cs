namespace Project2.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class t4 : DbMigration
    {
        public override void Up()
        {
            DropForeignKey("dbo.Projects", "HomId", "dbo.Homework");
            DropIndex("dbo.Projects", new[] { "HomId" });
            AddColumn("dbo.Homework", "HomeworkId", c => c.Int(nullable: false, identity: true));
            AddColumn("dbo.Projects", "Homework_HomeworkId", c => c.Int());
            DropPrimaryKey("dbo.Homework");
            AddPrimaryKey("dbo.Homework", "HomeworkId");
            CreateIndex("dbo.Projects", "Homework_HomeworkId");
            AddForeignKey("dbo.Projects", "Homework_HomeworkId", "dbo.Homework", "HomeworkId");
            DropColumn("dbo.Homework", "HomId");
        }
        
        public override void Down()
        {
            AddColumn("dbo.Homework", "HomId", c => c.Int(nullable: false, identity: true));
            DropForeignKey("dbo.Projects", "Homework_HomeworkId", "dbo.Homework");
            DropIndex("dbo.Projects", new[] { "Homework_HomeworkId" });
            DropPrimaryKey("dbo.Homework");
            AddPrimaryKey("dbo.Homework", "HomId");
            DropColumn("dbo.Projects", "Homework_HomeworkId");
            DropColumn("dbo.Homework", "HomeworkId");
            CreateIndex("dbo.Projects", "HomId");
            AddForeignKey("dbo.Projects", "HomId", "dbo.Homework", "HomId", cascadeDelete: true);
        }
    }
}
