CREATE TABLE [dbo].[t_product]
(
	[f_id]				INT					NOT NULL	Identity(1,1),
	[f_name]			NVARCHAR(20)		NOT NULL,
	[f_price]			INT					NOT NULL,
	[f_cost]			INT					NOT NULL,
	[f_createDateTime]	DATETIME			NOT NULL	default(GetDate())
	CONSTRAINT [PK_product] PRIMARY KEY CLUSTERED ([f_id] ASC)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_t_product]
    ON [dbo].[t_product]([f_id] ASC);
GO
