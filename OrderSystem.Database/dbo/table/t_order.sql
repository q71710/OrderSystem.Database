CREATE TABLE [dbo].[t_order]
(
	[f_id]				VARCHAR(20)			NOT NULL,
	[f_productId]		INT					NOT NULL,
	[f_price]			INT					NOT NULL,
	[f_cost]			INT					NOT NULL,
	[f_createDateTime]	DATETIME			NOT NULL	default(GetDate())
	CONSTRAINT [PK_order] PRIMARY KEY CLUSTERED ([f_id] ASC)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_t_order]
    ON [dbo].[t_order]([f_id] ASC);
GO
