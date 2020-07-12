CREATE TABLE [dbo].[t_shippingOrder]
(
	[f_id]				INT					NOT NULL	Identity(1,1),
	[f_orderId]			VARCHAR(20)			NOT NULL,
	[f_orderStatus]		TINYINT				NOT NULL	Default(0),
	[f_createDateTime]	DATETIME			NOT NULL	Default(GetDate())
	CONSTRAINT [PK_shippingOrder] PRIMARY KEY CLUSTERED ([f_id] ASC)
)
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_t_shippingOrder]
    ON [dbo].[t_shippingOrder]([f_id] ASC);
GO
