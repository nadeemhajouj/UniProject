namespace Project2.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class t1 : DbMigration
    {
        public override void Up()
        {
            AlterColumn("dbo.Homework", "Date", c => c.DateTime(nullable: false));
            AlterColumn("dbo.Homework", "DueDate", c => c.DateTime(nullable: false));
        }
        
        public override void Down()
        {
            AlterColumn("dbo.Homework", "DueDate", c => c.String(nullable: false));
            AlterColumn("dbo.Homework", "Date", c => c.String(nullable: false));
        }
    }
}
