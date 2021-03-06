--- A Tabela Usuarios foi gerada a partir de informações de AdventureWorks2017.


--- Você poderá alimentar a tabela de usuários de 2 formas:
-- 01) utilizar o trecho "INSERIR DADOS PRONTOS"  (Mais prático)
-- 02) ou seguir as instruções comentadas 
    -- a: Restaure o banco AdventureWorks2017 ou posterior
    -- b: Renomear para AdventureWorks
    -- c: Executar o Script Abaixo

/*
        USE [BlueMine]
        GO

        WITH Situacoes AS (
            Select Cod, Situacao From (values(1,'A'), (2, 'S'), (3, 'C'), (4,'A')) as d(Cod, Situacao)
        )
        INSERT INTO [dbo].Usuario
                ([CPF] ,[Nome] , DataNAscimento, Sexo, CargoID , [Situacao] , [Fone]  ,[Email]  )
        SELECT TOP 100
            CAST(10000000000 + (p.BusinessEntityID*9999)  as varchar(MAX)) as CPF
            , CONCAT(p.FirstName, ' ' , p.MiddleName, ' ', p.LastName) as Nome
            , DATEADD(year, (-1 * p.BusinessEntityID%40) - 18, GetDate()) as Datanascimento
            , CASE p.BusinessEntityID%3+1 WHEN 1 THEN 'M' WHEN 2 THEN 'F' ELSE 'O' ENd as Sexo
            , p.BusinessEntityID%5+1 as CargoID -- Cargos poss�veis
            , s.Situacao
            , (SELECT TOP 1 PhoneNumber  FROM [AdventureWorks].[Person].PersonPhone as E where E.BusinessEntityID = p.BusinessEntityID ) as Fone
            , (SELECT TOP 1 EMailAddress FROM [AdventureWorks].[Person].EmailAddress as E where E.BusinessEntityID = p.BusinessEntityID ) as Email
        From [AdventureWorks].[Person].Person as p
        join Situacoes as s on s.Cod = p.BusinessEntityID%4+1

*/

-- ************************************** INSERIR DADOS PRONTOS *******************************

USE [BlueMine]
GO
SET IDENTITY_INSERT [dbo].[Usuario] ON 
GO
INSERT [dbo].[Usuario] ([UsuarioId], [CPF], [Nome], [DataNascimento], [Fone], [Email], [Sexo], [CargoId], [Situacao], [DataCriacao]) VALUES (104, N'10002849715', N'Syed E Abbas', CAST(N'1996-05-26' AS Date), N'926-555-0182', N'syed0@adventure-works.com', N'M', 1, N'S', CAST(N'2019-05-26' AS Date))
GO
INSERT [dbo].[Usuario] ([UsuarioId], [CPF], [Nome], [DataNascimento], [Fone], [Email], [Sexo], [CargoId], [Situacao], [DataCriacao]) VALUES (105, N'10002929707', N'Catherine R. Abel', CAST(N'1988-05-26' AS Date), N'747-555-0171', N'catherine0@adventure-works.com', N'O', 4, N'S', CAST(N'2019-05-26' AS Date))
GO
INSERT [dbo].[Usuario] ([UsuarioId], [CPF], [Nome], [DataNascimento], [Fone], [Email], [Sexo], [CargoId], [Situacao], [DataCriacao]) VALUES (106, N'10002949705', N'Kim  Abercrombie', CAST(N'1986-05-26' AS Date), N'334-555-0137', N'kim2@adventure-works.com', N'F', 1, N'A', CAST(N'2019-05-26' AS Date))
GO
INSERT [dbo].[Usuario] ([UsuarioId], [CPF], [Nome], [DataNascimento], [Fone], [Email], [Sexo], [CargoId], [Situacao], [DataCriacao]) VALUES (107, N'10021697830', N'Kim  Abercrombie', CAST(N'1991-05-26' AS Date), N'919-555-0100', N'kim7@adventure-works.com', N'F', 1, N'C', CAST(N'2019-05-26' AS Date))
GO
INSERT [dbo].[Usuario] ([UsuarioId], [CPF], [Nome], [DataNascimento], [Fone], [Email], [Sexo], [CargoId], [Situacao], [DataCriacao]) VALUES (108, N'10000379962', N'Kim B Abercrombie', CAST(N'1963-05-26' AS Date), N'208-555-0114', N'kim1@adventure-works.com', N'O', 4, N'C', CAST(N'2019-05-26' AS Date))
GO
INSERT [dbo].[Usuario] ([UsuarioId], [CPF], [Nome], [DataNascimento], [Fone], [Email], [Sexo], [CargoId], [Situacao], [DataCriacao]) VALUES (109, N'10002109789', N'Hazem E Abolrous', CAST(N'1990-05-26' AS Date), N'869-555-0125', N'hazem0@adventure-works.com', N'F', 2, N'A', CAST(N'2019-05-26' AS Date))
GO
INSERT [dbo].[Usuario] ([UsuarioId], [CPF], [Nome], [DataNascimento], [Fone], [Email], [Sexo], [CargoId], [Situacao], [DataCriacao]) VALUES (110, N'10023567643', N'Sam  Abolrous', CAST(N'1964-05-26' AS Date), N'567-555-0100', N'sam1@adventure-works.com', N'O', 3, N'S', CAST(N'2019-05-26' AS Date))
GO
INSERT [dbo].[Usuario] ([UsuarioId], [CPF], [Nome], [DataNascimento], [Fone], [Email], [Sexo], [CargoId], [Situacao], [DataCriacao]) VALUES (111, N'10002969703', N'Humberto  Acevedo', CAST(N'1984-05-26' AS Date), N'599-555-0127', N'humberto0@adventure-works.com', N'M', 3, N'S', CAST(N'2019-05-26' AS Date))
GO
INSERT [dbo].[Usuario] ([UsuarioId], [CPF], [Nome], [DataNascimento], [Fone], [Email], [Sexo], [CargoId], [Situacao], [DataCriacao]) VALUES (112, N'10002909709', N'Gustavo  Achong', CAST(N'1990-05-26' AS Date), N'398-555-0132', N'gustavo0@adventure-works.com', N'M', 2, N'A', CAST(N'2019-05-26' AS Date))
GO
INSERT [dbo].[Usuario] ([UsuarioId], [CPF], [Nome], [DataNascimento], [Fone], [Email], [Sexo], [CargoId], [Situacao], [DataCriacao]) VALUES (113, N'10002989701', N'Pilar  Ackerman', CAST(N'1982-05-26' AS Date), N'1 (11) 500 555-0132', N'pilar1@adventure-works.com', N'O', 5, N'A', CAST(N'2019-05-26' AS Date))
GO
INSERT [dbo].[Usuario] ([UsuarioId], [CPF], [Nome], [DataNascimento], [Fone], [Email], [Sexo], [CargoId], [Situacao], [DataCriacao]) VALUES (114, N'10001209879', N'Pilar G Ackerman', CAST(N'2000-05-26' AS Date), N'577-555-0185', N'pilar0@adventure-works.com', N'F', 2, N'S', CAST(N'2019-05-26' AS Date))
GO
INSERT [dbo].[Usuario] ([UsuarioId], [CPF], [Nome], [DataNascimento], [Fone], [Email], [Sexo], [CargoId], [Situacao], [DataCriacao]) VALUES (115, N'10168653133', N'Aaron B Adams', CAST(N'1974-05-26' AS Date), N'417-555-0154', N'aaron48@adventure-works.com', N'F', 3, N'A', CAST(N'2019-05-26' AS Date))
GO
INSERT [dbo].[Usuario] ([UsuarioId], [CPF], [Nome], [DataNascimento], [Fone], [Email], [Sexo], [CargoId], [Situacao], [DataCriacao]) VALUES (116, N'10168993099', N'Adam  Adams', CAST(N'1980-05-26' AS Date), N'129-555-0195', N'adam46@adventure-works.com', N'O', 2, N'S', CAST(N'2019-05-26' AS Date))
GO
INSERT [dbo].[Usuario] ([UsuarioId], [CPF], [Nome], [DataNascimento], [Fone], [Email], [Sexo], [CargoId], [Situacao], [DataCriacao]) VALUES (117, N'10167223276', N'Alex C Adams', CAST(N'1997-05-26' AS Date), N'346-555-0124', N'alex43@adventure-works.com', N'O', 5, N'A', CAST(N'2019-05-26' AS Date))
GO
INSERT [dbo].[Usuario] ([UsuarioId], [CPF], [Nome], [DataNascimento], [Fone], [Email], [Sexo], [CargoId], [Situacao], [DataCriacao]) VALUES (118, N'10102619737', N'Alexandra J Adams', CAST(N'1978-05-26' AS Date), N'629-555-0159', N'alexandra57@adventure-works.com', N'M', 4, N'A', CAST(N'2019-05-26' AS Date))
GO
INSERT [dbo].[Usuario] ([UsuarioId], [CPF], [Nome], [DataNascimento], [Fone], [Email], [Sexo], [CargoId], [Situacao], [DataCriacao]) VALUES (119, N'10103109688', N'Allison L Adams', CAST(N'1969-05-26' AS Date), N'1 (11) 500 555-0153', N'allison38@adventure-works.com', N'F', 3, N'A', CAST(N'2019-05-26' AS Date))
GO
INSERT [dbo].[Usuario] ([UsuarioId], [CPF], [Nome], [DataNascimento], [Fone], [Email], [Sexo], [CargoId], [Situacao], [DataCriacao]) VALUES (120, N'10102729726', N'Amanda P Adams', CAST(N'1967-05-26' AS Date), N'592-555-0166', N'amanda58@adventure-works.com', N'O', 5, N'C', CAST(N'2019-05-26' AS Date))
GO
INSERT [dbo].[Usuario] ([UsuarioId], [CPF], [Nome], [DataNascimento], [Fone], [Email], [Sexo], [CargoId], [Situacao], [DataCriacao]) VALUES (121, N'10102909708', N'Amber  Adams', CAST(N'1989-05-26' AS Date), N'1 (11) 500 555-0116', N'amber16@adventure-works.com', N'O', 3, N'A', CAST(N'2019-05-26' AS Date))
GO
INSERT [dbo].[Usuario] ([UsuarioId], [CPF], [Nome], [DataNascimento], [Fone], [Email], [Sexo], [CargoId], [Situacao], [DataCriacao]) VALUES (122, N'10103129686', N'Andrea M Adams', CAST(N'1967-05-26' AS Date), N'658-555-0193', N'andrea37@adventure-works.com', N'M', 5, N'C', CAST(N'2019-05-26' AS Date))
GO
INSERT [dbo].[Usuario] ([UsuarioId], [CPF], [Nome], [DataNascimento], [Fone], [Email], [Sexo], [CargoId], [Situacao], [DataCriacao]) VALUES (123, N'10166973301', N'Angel  Adams', CAST(N'1982-05-26' AS Date), N'467-555-0126', N'angel37@adventure-works.com', N'F', 5, N'A', CAST(N'2019-05-26' AS Date))
GO
INSERT [dbo].[Usuario] ([UsuarioId], [CPF], [Nome], [DataNascimento], [Fone], [Email], [Sexo], [CargoId], [Situacao], [DataCriacao]) VALUES (124, N'10102979701', N'Bailey  Adams', CAST(N'1982-05-26' AS Date), N'437-555-0199', N'bailey35@adventure-works.com', N'M', 5, N'A', CAST(N'2019-05-26' AS Date))
GO
INSERT [dbo].[Usuario] ([UsuarioId], [CPF], [Nome], [DataNascimento], [Fone], [Email], [Sexo], [CargoId], [Situacao], [DataCriacao]) VALUES (125, N'10017698230', N'Ben  Adams', CAST(N'1991-05-26' AS Date), N'182-555-0100', N'ben2@adventure-works.com', N'M', 1, N'C', CAST(N'2019-05-26' AS Date))
GO
INSERT [dbo].[Usuario] ([UsuarioId], [CPF], [Nome], [DataNascimento], [Fone], [Email], [Sexo], [CargoId], [Situacao], [DataCriacao]) VALUES (126, N'10041935806', N'Blake L Adams', CAST(N'1967-05-26' AS Date), N'590-555-0140', N'blake33@adventure-works.com', N'M', 5, N'C', CAST(N'2019-05-26' AS Date))
GO
INSERT [dbo].[Usuario] ([UsuarioId], [CPF], [Nome], [DataNascimento], [Fone], [Email], [Sexo], [CargoId], [Situacao], [DataCriacao]) VALUES (127, N'10003049695', N'Carla J. Adams', CAST(N'1976-05-26' AS Date), N'107-555-0138', N'carla0@adventure-works.com', N'O', 1, N'S', CAST(N'2019-05-26' AS Date))
GO
INSERT [dbo].[Usuario] ([UsuarioId], [CPF], [Nome], [DataNascimento], [Fone], [Email], [Sexo], [CargoId], [Situacao], [DataCriacao]) VALUES (128, N'10166893309', N'Carlos  Adams', CAST(N'1990-05-26' AS Date), N'167-555-0143', N'carlos42@adventure-works.com', N'O', 2, N'A', CAST(N'2019-05-26' AS Date))
GO
INSERT [dbo].[Usuario] ([UsuarioId], [CPF], [Nome], [DataNascimento], [Fone], [Email], [Sexo], [CargoId], [Situacao], [DataCriacao]) VALUES (129, N'10048905109', N'Charles R Adams', CAST(N'1990-05-26' AS Date), N'257-555-0115', N'charles35@adventure-works.com', N'F', 2, N'A', CAST(N'2019-05-26' AS Date))
GO
INSERT [dbo].[Usuario] ([UsuarioId], [CPF], [Nome], [DataNascimento], [Fone], [Email], [Sexo], [CargoId], [Situacao], [DataCriacao]) VALUES (130, N'10102499749', N'Chloe A Adams', CAST(N'1990-05-26' AS Date), N'788-555-0147', N'chloe13@adventure-works.com', N'M', 2, N'A', CAST(N'2019-05-26' AS Date))
GO
INSERT [dbo].[Usuario] ([UsuarioId], [CPF], [Nome], [DataNascimento], [Fone], [Email], [Sexo], [CargoId], [Situacao], [DataCriacao]) VALUES (131, N'10168703128', N'Connor  Adams', CAST(N'1969-05-26' AS Date), N'895-555-0169', N'connor44@adventure-works.com', N'M', 3, N'A', CAST(N'2019-05-26' AS Date))
GO
INSERT [dbo].[Usuario] ([UsuarioId], [CPF], [Nome], [DataNascimento], [Fone], [Email], [Sexo], [CargoId], [Situacao], [DataCriacao]) VALUES (132, N'10102919707', N'Courtney C Adams', CAST(N'1988-05-26' AS Date), N'709-555-0119', N'courtney12@adventure-works.com', N'M', 4, N'S', CAST(N'2019-05-26' AS Date))
GO
INSERT [dbo].[Usuario] ([UsuarioId], [CPF], [Nome], [DataNascimento], [Fone], [Email], [Sexo], [CargoId], [Situacao], [DataCriacao]) VALUES (133, N'10045025497', N'Dalton  Adams', CAST(N'1978-05-26' AS Date), N'1 (11) 500 555-0111', N'dalton31@adventure-works.com', N'M', 4, N'A', CAST(N'2019-05-26' AS Date))
GO
INSERT [dbo].[Usuario] ([UsuarioId], [CPF], [Nome], [DataNascimento], [Fone], [Email], [Sexo], [CargoId], [Situacao], [DataCriacao]) VALUES (134, N'10049695030', N'Devin  Adams', CAST(N'1991-05-26' AS Date), N'1 (11) 500 555-0161', N'devin29@adventure-works.com', N'O', 1, N'C', CAST(N'2019-05-26' AS Date))
GO
INSERT [dbo].[Usuario] ([UsuarioId], [CPF], [Nome], [DataNascimento], [Fone], [Email], [Sexo], [CargoId], [Situacao], [DataCriacao]) VALUES (135, N'10050544945', N'Eduardo A Adams', CAST(N'1986-05-26' AS Date), N'414-555-0196', N'eduardo30@adventure-works.com', N'M', 1, N'A', CAST(N'2019-05-26' AS Date))
GO
INSERT [dbo].[Usuario] ([UsuarioId], [CPF], [Nome], [DataNascimento], [Fone], [Email], [Sexo], [CargoId], [Situacao], [DataCriacao]) VALUES (136, N'10037306269', N'Edward  Adams', CAST(N'1990-05-26' AS Date), N'947-555-0187', N'edward8@adventure-works.com', N'O', 2, N'A', CAST(N'2019-05-26' AS Date))
GO
INSERT [dbo].[Usuario] ([UsuarioId], [CPF], [Nome], [DataNascimento], [Fone], [Email], [Sexo], [CargoId], [Situacao], [DataCriacao]) VALUES (137, N'10168563142', N'Elijah L Adams', CAST(N'1983-05-26' AS Date), N'112-555-0174', N'elijah43@adventure-works.com', N'F', 4, N'C', CAST(N'2019-05-26' AS Date))
GO
INSERT [dbo].[Usuario] ([UsuarioId], [CPF], [Nome], [DataNascimento], [Fone], [Email], [Sexo], [CargoId], [Situacao], [DataCriacao]) VALUES (138, N'10169003098', N'Eric  Adams', CAST(N'1979-05-26' AS Date), N'136-555-0115', N'eric57@adventure-works.com', N'M', 3, N'C', CAST(N'2019-05-26' AS Date))
GO
INSERT [dbo].[Usuario] ([UsuarioId], [CPF], [Nome], [DataNascimento], [Fone], [Email], [Sexo], [CargoId], [Situacao], [DataCriacao]) VALUES (139, N'10167283270', N'Evan  Adams', CAST(N'1991-05-26' AS Date), N'766-555-0180', N'evan39@adventure-works.com', N'O', 1, N'C', CAST(N'2019-05-26' AS Date))
GO
INSERT [dbo].[Usuario] ([UsuarioId], [CPF], [Nome], [DataNascimento], [Fone], [Email], [Sexo], [CargoId], [Situacao], [DataCriacao]) VALUES (140, N'10038886111', N'Fernando S Adams', CAST(N'1992-05-26' AS Date), N'247-555-0133', N'fernando31@adventure-works.com', N'F', 5, N'S', CAST(N'2019-05-26' AS Date))
GO
INSERT [dbo].[Usuario] ([UsuarioId], [CPF], [Nome], [DataNascimento], [Fone], [Email], [Sexo], [CargoId], [Situacao], [DataCriacao]) VALUES (141, N'10003009699', N'Frances B. Adams', CAST(N'1980-05-26' AS Date), N'991-555-0183', N'frances0@adventure-works.com', N'F', 2, N'S', CAST(N'2019-05-26' AS Date))
GO
INSERT [dbo].[Usuario] ([UsuarioId], [CPF], [Nome], [DataNascimento], [Fone], [Email], [Sexo], [CargoId], [Situacao], [DataCriacao]) VALUES (142, N'10168483150', N'Gabriel S Adams', CAST(N'1991-05-26' AS Date), N'453-555-0116', N'gabriel47@adventure-works.com', N'O', 1, N'C', CAST(N'2019-05-26' AS Date))
GO
INSERT [dbo].[Usuario] ([UsuarioId], [CPF], [Nome], [DataNascimento], [Fone], [Email], [Sexo], [CargoId], [Situacao], [DataCriacao]) VALUES (143, N'10103009698', N'Gabriella K Adams', CAST(N'1979-05-26' AS Date), N'892-555-0196', N'gabriella39@adventure-works.com', N'M', 3, N'C', CAST(N'2019-05-26' AS Date))
GO
INSERT [dbo].[Usuario] ([UsuarioId], [CPF], [Nome], [DataNascimento], [Fone], [Email], [Sexo], [CargoId], [Situacao], [DataCriacao]) VALUES (144, N'10102809718', N'Gabrielle J Adams', CAST(N'1999-05-26' AS Date), N'403-555-0152', N'gabrielle58@adventure-works.com', N'F', 3, N'C', CAST(N'2019-05-26' AS Date))
GO
INSERT [dbo].[Usuario] ([UsuarioId], [CPF], [Nome], [DataNascimento], [Fone], [Email], [Sexo], [CargoId], [Situacao], [DataCriacao]) VALUES (145, N'10102779721', N'Hailey M Adams', CAST(N'1962-05-26' AS Date), N'906-555-0157', N'hailey55@adventure-works.com', N'F', 5, N'A', CAST(N'2019-05-26' AS Date))
GO
INSERT [dbo].[Usuario] ([UsuarioId], [CPF], [Nome], [DataNascimento], [Fone], [Email], [Sexo], [CargoId], [Situacao], [DataCriacao]) VALUES (146, N'10102819717', N'Haley M Adams', CAST(N'1998-05-26' AS Date), N'665-555-0117', N'haley52@adventure-works.com', N'O', 4, N'A', CAST(N'2019-05-26' AS Date))
GO
INSERT [dbo].[Usuario] ([UsuarioId], [CPF], [Nome], [DataNascimento], [Fone], [Email], [Sexo], [CargoId], [Situacao], [DataCriacao]) VALUES (147, N'10166543344', N'Hunter  Adams', CAST(N'1985-05-26' AS Date), N'135-555-0180', N'hunter40@adventure-works.com', N'M', 2, N'A', CAST(N'2019-05-26' AS Date))
GO
INSERT [dbo].[Usuario] ([UsuarioId], [CPF], [Nome], [DataNascimento], [Fone], [Email], [Sexo], [CargoId], [Situacao], [DataCriacao]) VALUES (148, N'10047465253', N'Ian C Adams', CAST(N'1974-05-26' AS Date), N'1 (11) 500 555-0151', N'ian30@adventure-works.com', N'F', 3, N'A', CAST(N'2019-05-26' AS Date))
GO
INSERT [dbo].[Usuario] ([UsuarioId], [CPF], [Nome], [DataNascimento], [Fone], [Email], [Sexo], [CargoId], [Situacao], [DataCriacao]) VALUES (149, N'10167453253', N'Isaac  Adams', CAST(N'1974-05-26' AS Date), N'612-555-0118', N'isaac36@adventure-works.com', N'F', 3, N'A', CAST(N'2019-05-26' AS Date))
GO
INSERT [dbo].[Usuario] ([UsuarioId], [CPF], [Nome], [DataNascimento], [Fone], [Email], [Sexo], [CargoId], [Situacao], [DataCriacao]) VALUES (150, N'10102599739', N'Isabella  Adams', CAST(N'1980-05-26' AS Date), N'1 (11) 500 555-0115', N'isabella46@adventure-works.com', N'F', 2, N'S', CAST(N'2019-05-26' AS Date))
GO
INSERT [dbo].[Usuario] ([UsuarioId], [CPF], [Nome], [DataNascimento], [Fone], [Email], [Sexo], [CargoId], [Situacao], [DataCriacao]) VALUES (151, N'10167203278', N'Isaiah L Adams', CAST(N'1999-05-26' AS Date), N'855-555-0159', N'isaiah38@adventure-works.com', N'M', 3, N'C', CAST(N'2019-05-26' AS Date))
GO
INSERT [dbo].[Usuario] ([UsuarioId], [CPF], [Nome], [DataNascimento], [Fone], [Email], [Sexo], [CargoId], [Situacao], [DataCriacao]) VALUES (152, N'10168923106', N'Jack  Adams', CAST(N'1987-05-26' AS Date), N'505-555-0120', N'jack52@adventure-works.com', N'F', 5, N'C', CAST(N'2019-05-26' AS Date))
GO
INSERT [dbo].[Usuario] ([UsuarioId], [CPF], [Nome], [DataNascimento], [Fone], [Email], [Sexo], [CargoId], [Situacao], [DataCriacao]) VALUES (153, N'10169083090', N'Jackson H Adams', CAST(N'1971-05-26' AS Date), N'183-555-0132', N'jackson47@adventure-works.com', N'O', 1, N'C', CAST(N'2019-05-26' AS Date))
GO
INSERT [dbo].[Usuario] ([UsuarioId], [CPF], [Nome], [DataNascimento], [Fone], [Email], [Sexo], [CargoId], [Situacao], [DataCriacao]) VALUES (154, N'10103029696', N'Jada  Adams', CAST(N'1977-05-26' AS Date), N'524-555-0166', N'jada25@adventure-works.com', N'O', 5, N'A', CAST(N'2019-05-26' AS Date))
GO
INSERT [dbo].[Usuario] ([UsuarioId], [CPF], [Nome], [DataNascimento], [Fone], [Email], [Sexo], [CargoId], [Situacao], [DataCriacao]) VALUES (155, N'10168263172', N'James  Adams', CAST(N'1973-05-26' AS Date), N'331-555-0189', N'james66@adventure-works.com', N'F', 4, N'A', CAST(N'2019-05-26' AS Date))
GO
INSERT [dbo].[Usuario] ([UsuarioId], [CPF], [Nome], [DataNascimento], [Fone], [Email], [Sexo], [CargoId], [Situacao], [DataCriacao]) VALUES (156, N'10168573141', N'Jason  Adams', CAST(N'1982-05-26' AS Date), N'249-555-0135', N'jason44@adventure-works.com', N'O', 5, N'A', CAST(N'2019-05-26' AS Date))
GO
INSERT [dbo].[Usuario] ([UsuarioId], [CPF], [Nome], [DataNascimento], [Fone], [Email], [Sexo], [CargoId], [Situacao], [DataCriacao]) VALUES (157, N'10003069693', N'Jay  Adams', CAST(N'1974-05-26' AS Date), N'158-555-0142', N'jay1@adventure-works.com', N'F', 3, N'A', CAST(N'2019-05-26' AS Date))
GO
INSERT [dbo].[Usuario] ([UsuarioId], [CPF], [Nome], [DataNascimento], [Fone], [Email], [Sexo], [CargoId], [Situacao], [DataCriacao]) VALUES (158, N'10000669933', N'Jay G Adams', CAST(N'1974-05-26' AS Date), N'407-555-0165', N'jay0@adventure-works.com', N'F', 3, N'A', CAST(N'2019-05-26' AS Date))
GO
INSERT [dbo].[Usuario] ([UsuarioId], [CPF], [Nome], [DataNascimento], [Fone], [Email], [Sexo], [CargoId], [Situacao], [DataCriacao]) VALUES (159, N'10102939705', N'Jenna L Adams', CAST(N'1986-05-26' AS Date), N'1 (11) 500 555-0162', N'jenna15@adventure-works.com', N'O', 1, N'A', CAST(N'2019-05-26' AS Date))
GO
INSERT [dbo].[Usuario] ([UsuarioId], [CPF], [Nome], [DataNascimento], [Fone], [Email], [Sexo], [CargoId], [Situacao], [DataCriacao]) VALUES (160, N'10102559743', N'Jennifer  Adams', CAST(N'1984-05-26' AS Date), N'124-555-0126', N'jennifer18@adventure-works.com', N'M', 3, N'S', CAST(N'2019-05-26' AS Date))
GO
INSERT [dbo].[Usuario] ([UsuarioId], [CPF], [Nome], [DataNascimento], [Fone], [Email], [Sexo], [CargoId], [Situacao], [DataCriacao]) VALUES (161, N'10040335966', N'Jeremy D Adams', CAST(N'1967-05-26' AS Date), N'542-555-0149', N'jeremy10@adventure-works.com', N'O', 5, N'C', CAST(N'2019-05-26' AS Date))
GO
INSERT [dbo].[Usuario] ([UsuarioId], [CPF], [Nome], [DataNascimento], [Fone], [Email], [Sexo], [CargoId], [Situacao], [DataCriacao]) VALUES (162, N'10167523246', N'Jesse M Adams', CAST(N'1967-05-26' AS Date), N'626-555-0110', N'jesse39@adventure-works.com', N'O', 5, N'C', CAST(N'2019-05-26' AS Date))
GO
INSERT [dbo].[Usuario] ([UsuarioId], [CPF], [Nome], [DataNascimento], [Fone], [Email], [Sexo], [CargoId], [Situacao], [DataCriacao]) VALUES (163, N'10168293169', N'Jonathan  Adams', CAST(N'1970-05-26' AS Date), N'145-555-0135', N'jonathan46@adventure-works.com', N'F', 2, N'A', CAST(N'2019-05-26' AS Date))
GO
INSERT [dbo].[Usuario] ([UsuarioId], [CPF], [Nome], [DataNascimento], [Fone], [Email], [Sexo], [CargoId], [Situacao], [DataCriacao]) VALUES (164, N'10102959703', N'Jordan F Adams', CAST(N'1984-05-26' AS Date), N'354-555-0139', N'jordan44@adventure-works.com', N'F', 3, N'S', CAST(N'2019-05-26' AS Date))
GO
INSERT [dbo].[Usuario] ([UsuarioId], [CPF], [Nome], [DataNascimento], [Fone], [Email], [Sexo], [CargoId], [Situacao], [DataCriacao]) VALUES (165, N'10168883110', N'Jordan R Adams', CAST(N'1991-05-26' AS Date), N'756-555-0151', N'jordan70@adventure-works.com', N'M', 1, N'C', CAST(N'2019-05-26' AS Date))
GO
INSERT [dbo].[Usuario] ([UsuarioId], [CPF], [Nome], [DataNascimento], [Fone], [Email], [Sexo], [CargoId], [Situacao], [DataCriacao]) VALUES (166, N'10168173181', N'Jose J Adams', CAST(N'1982-05-26' AS Date), N'644-555-0114', N'jose51@adventure-works.com', N'F', 5, N'A', CAST(N'2019-05-26' AS Date))
GO
INSERT [dbo].[Usuario] ([UsuarioId], [CPF], [Nome], [DataNascimento], [Fone], [Email], [Sexo], [CargoId], [Situacao], [DataCriacao]) VALUES (167, N'10102519747', N'Julia N Adams', CAST(N'1988-05-26' AS Date), N'681-555-0110', N'julia12@adventure-works.com', N'O', 4, N'S', CAST(N'2019-05-26' AS Date))
GO
INSERT [dbo].[Usuario] ([UsuarioId], [CPF], [Nome], [DataNascimento], [Fone], [Email], [Sexo], [CargoId], [Situacao], [DataCriacao]) VALUES (168, N'10102569742', N'Kaitlyn A Adams', CAST(N'1983-05-26' AS Date), N'512-555-0158', N'kaitlyn13@adventure-works.com', N'F', 4, N'C', CAST(N'2019-05-26' AS Date))
GO
INSERT [dbo].[Usuario] ([UsuarioId], [CPF], [Nome], [DataNascimento], [Fone], [Email], [Sexo], [CargoId], [Situacao], [DataCriacao]) VALUES (169, N'10103039695', N'Katelyn W Adams', CAST(N'1976-05-26' AS Date), N'139-555-0154', N'katelyn39@adventure-works.com', N'M', 1, N'S', CAST(N'2019-05-26' AS Date))
GO
INSERT [dbo].[Usuario] ([UsuarioId], [CPF], [Nome], [DataNascimento], [Fone], [Email], [Sexo], [CargoId], [Situacao], [DataCriacao]) VALUES (170, N'10102669732', N'Katherine M Adams', CAST(N'1973-05-26' AS Date), N'622-555-0184', N'katherine63@adventure-works.com', N'O', 4, N'A', CAST(N'2019-05-26' AS Date))
GO
INSERT [dbo].[Usuario] ([UsuarioId], [CPF], [Nome], [DataNascimento], [Fone], [Email], [Sexo], [CargoId], [Situacao], [DataCriacao]) VALUES (171, N'10103099689', N'Kaylee F Adams', CAST(N'1970-05-26' AS Date), N'664-555-0174', N'kaylee38@adventure-works.com', N'M', 2, N'A', CAST(N'2019-05-26' AS Date))
GO
INSERT [dbo].[Usuario] ([UsuarioId], [CPF], [Nome], [DataNascimento], [Fone], [Email], [Sexo], [CargoId], [Situacao], [DataCriacao]) VALUES (172, N'10168443154', N'Kevin M Adams', CAST(N'1995-05-26' AS Date), N'104-555-0111', N'kevin54@adventure-works.com', N'F', 2, N'C', CAST(N'2019-05-26' AS Date))
GO
INSERT [dbo].[Usuario] ([UsuarioId], [CPF], [Nome], [DataNascimento], [Fone], [Email], [Sexo], [CargoId], [Situacao], [DataCriacao]) VALUES (173, N'10168433155', N'Kyle E Adams', CAST(N'1996-05-26' AS Date), N'274-555-0116', N'kyle45@adventure-works.com', N'M', 1, N'S', CAST(N'2019-05-26' AS Date))
GO
INSERT [dbo].[Usuario] ([UsuarioId], [CPF], [Nome], [DataNascimento], [Fone], [Email], [Sexo], [CargoId], [Situacao], [DataCriacao]) VALUES (174, N'10168353163', N'Logan  Adams', CAST(N'1964-05-26' AS Date), N'696-555-0130', N'logan42@adventure-works.com', N'F', 3, N'S', CAST(N'2019-05-26' AS Date))
GO
INSERT [dbo].[Usuario] ([UsuarioId], [CPF], [Nome], [DataNascimento], [Fone], [Email], [Sexo], [CargoId], [Situacao], [DataCriacao]) VALUES (175, N'10048225177', N'Lucas  Adams', CAST(N'1978-05-26' AS Date), N'300-555-0118', N'lucas47@adventure-works.com', N'O', 4, N'A', CAST(N'2019-05-26' AS Date))
GO
INSERT [dbo].[Usuario] ([UsuarioId], [CPF], [Nome], [DataNascimento], [Fone], [Email], [Sexo], [CargoId], [Situacao], [DataCriacao]) VALUES (176, N'10168603138', N'Luis R Adams', CAST(N'1979-05-26' AS Date), N'1 (11) 500 555-0120', N'luis48@adventure-works.com', N'O', 3, N'C', CAST(N'2019-05-26' AS Date))
GO
INSERT [dbo].[Usuario] ([UsuarioId], [CPF], [Nome], [DataNascimento], [Fone], [Email], [Sexo], [CargoId], [Situacao], [DataCriacao]) VALUES (177, N'10168823116', N'Luke C Adams', CAST(N'1997-05-26' AS Date), N'1 (11) 500 555-0111', N'luke46@adventure-works.com', N'M', 5, N'A', CAST(N'2019-05-26' AS Date))
GO
INSERT [dbo].[Usuario] ([UsuarioId], [CPF], [Nome], [DataNascimento], [Fone], [Email], [Sexo], [CargoId], [Situacao], [DataCriacao]) VALUES (178, N'10102989700', N'Mackenzie A Adams', CAST(N'1981-05-26' AS Date), N'235-555-0126', N'mackenzie36@adventure-works.com', N'F', 1, N'A', CAST(N'2019-05-26' AS Date))
GO
INSERT [dbo].[Usuario] ([UsuarioId], [CPF], [Nome], [DataNascimento], [Fone], [Email], [Sexo], [CargoId], [Situacao], [DataCriacao]) VALUES (179, N'10046575342', N'Marcus M Adams', CAST(N'1983-05-26' AS Date), N'687-555-0170', N'marcus34@adventure-works.com', N'O', 4, N'C', CAST(N'2019-05-26' AS Date))
GO
INSERT [dbo].[Usuario] ([UsuarioId], [CPF], [Nome], [DataNascimento], [Fone], [Email], [Sexo], [CargoId], [Situacao], [DataCriacao]) VALUES (180, N'10102799719', N'Maria N Adams', CAST(N'2000-05-26' AS Date), N'974-555-0128', N'maria57@adventure-works.com', N'M', 2, N'S', CAST(N'2019-05-26' AS Date))
GO
INSERT [dbo].[Usuario] ([UsuarioId], [CPF], [Nome], [DataNascimento], [Fone], [Email], [Sexo], [CargoId], [Situacao], [DataCriacao]) VALUES (181, N'10102879711', N'Mary D Adams', CAST(N'1992-05-26' AS Date), N'388-555-0172', N'mary29@adventure-works.com', N'O', 5, N'S', CAST(N'2019-05-26' AS Date))
GO
INSERT [dbo].[Usuario] ([UsuarioId], [CPF], [Nome], [DataNascimento], [Fone], [Email], [Sexo], [CargoId], [Situacao], [DataCriacao]) VALUES (182, N'10167323266', N'Mason T Adams', CAST(N'1987-05-26' AS Date), N'168-555-0134', N'mason35@adventure-works.com', N'M', 5, N'C', CAST(N'2019-05-26' AS Date))
GO
INSERT [dbo].[Usuario] ([UsuarioId], [CPF], [Nome], [DataNascimento], [Fone], [Email], [Sexo], [CargoId], [Situacao], [DataCriacao]) VALUES (183, N'10041175882', N'Miguel  Adams', CAST(N'1963-05-26' AS Date), N'910-555-0185', N'miguel32@adventure-works.com', N'O', 4, N'C', CAST(N'2019-05-26' AS Date))
GO
INSERT [dbo].[Usuario] ([UsuarioId], [CPF], [Nome], [DataNascimento], [Fone], [Email], [Sexo], [CargoId], [Situacao], [DataCriacao]) VALUES (184, N'10102579741', N'Morgan  Adams', CAST(N'1982-05-26' AS Date), N'1 (11) 500 555-0167', N'morgan12@adventure-works.com', N'O', 5, N'A', CAST(N'2019-05-26' AS Date))
GO
INSERT [dbo].[Usuario] ([UsuarioId], [CPF], [Nome], [DataNascimento], [Fone], [Email], [Sexo], [CargoId], [Situacao], [DataCriacao]) VALUES (185, N'10102609738', N'Natalie P Adams', CAST(N'1979-05-26' AS Date), N'300-555-0150', N'natalie58@adventure-works.com', N'O', 3, N'C', CAST(N'2019-05-26' AS Date))
GO
INSERT [dbo].[Usuario] ([UsuarioId], [CPF], [Nome], [DataNascimento], [Fone], [Email], [Sexo], [CargoId], [Situacao], [DataCriacao]) VALUES (186, N'10168383160', N'Nathan C Adams', CAST(N'2001-05-26' AS Date), N'789-555-0194', N'nathan45@adventure-works.com', N'F', 1, N'A', CAST(N'2019-05-26' AS Date))
GO
INSERT [dbo].[Usuario] ([UsuarioId], [CPF], [Nome], [DataNascimento], [Fone], [Email], [Sexo], [CargoId], [Situacao], [DataCriacao]) VALUES (187, N'10166603338', N'Noah B Adams', CAST(N'1979-05-26' AS Date), N'780-555-0167', N'noah41@adventure-works.com', N'M', 3, N'C', CAST(N'2019-05-26' AS Date))
GO
INSERT [dbo].[Usuario] ([UsuarioId], [CPF], [Nome], [DataNascimento], [Fone], [Email], [Sexo], [CargoId], [Situacao], [DataCriacao]) VALUES (188, N'10102829716', N'Rebecca F Adams', CAST(N'1997-05-26' AS Date), N'1 (11) 500 555-0134', N'rebecca17@adventure-works.com', N'M', 5, N'A', CAST(N'2019-05-26' AS Date))
GO
INSERT [dbo].[Usuario] ([UsuarioId], [CPF], [Nome], [DataNascimento], [Fone], [Email], [Sexo], [CargoId], [Situacao], [DataCriacao]) VALUES (189, N'10045765423', N'Richard R Adams', CAST(N'1984-05-26' AS Date), N'243-555-0193', N'richard26@adventure-works.com', N'O', 3, N'S', CAST(N'2019-05-26' AS Date))
GO
INSERT [dbo].[Usuario] ([UsuarioId], [CPF], [Nome], [DataNascimento], [Fone], [Email], [Sexo], [CargoId], [Situacao], [DataCriacao]) VALUES (190, N'10167903208', N'Robert Q Adams', CAST(N'1969-05-26' AS Date), N'529-555-0126', N'robert57@adventure-works.com', N'F', 3, N'A', CAST(N'2019-05-26' AS Date))
GO
INSERT [dbo].[Usuario] ([UsuarioId], [CPF], [Nome], [DataNascimento], [Fone], [Email], [Sexo], [CargoId], [Situacao], [DataCriacao]) VALUES (191, N'10166363362', N'Samuel  Adams', CAST(N'1963-05-26' AS Date), N'161-555-0157', N'samuel44@adventure-works.com', N'M', 4, N'C', CAST(N'2019-05-26' AS Date))
GO
INSERT [dbo].[Usuario] ([UsuarioId], [CPF], [Nome], [DataNascimento], [Fone], [Email], [Sexo], [CargoId], [Situacao], [DataCriacao]) VALUES (192, N'10103019697', N'Sara A Adams', CAST(N'1978-05-26' AS Date), N'516-555-0113', N'sara42@adventure-works.com', N'F', 4, N'A', CAST(N'2019-05-26' AS Date))
GO
INSERT [dbo].[Usuario] ([UsuarioId], [CPF], [Nome], [DataNascimento], [Fone], [Email], [Sexo], [CargoId], [Situacao], [DataCriacao]) VALUES (193, N'10103079691', N'Savannah  Adams', CAST(N'1972-05-26' AS Date), N'1 (11) 500 555-0130', N'savannah38@adventure-works.com', N'F', 5, N'S', CAST(N'2019-05-26' AS Date))
GO
INSERT [dbo].[Usuario] ([UsuarioId], [CPF], [Nome], [DataNascimento], [Fone], [Email], [Sexo], [CargoId], [Situacao], [DataCriacao]) VALUES (194, N'10167653233', N'Sean J Adams', CAST(N'1994-05-26' AS Date), N'1 (11) 500 555-0127', N'sean47@adventure-works.com', N'M', 3, N'A', CAST(N'2019-05-26' AS Date))
GO
INSERT [dbo].[Usuario] ([UsuarioId], [CPF], [Nome], [DataNascimento], [Fone], [Email], [Sexo], [CargoId], [Situacao], [DataCriacao]) VALUES (195, N'10043495650', N'Seth L Adams', CAST(N'1971-05-26' AS Date), N'472-555-0154', N'seth33@adventure-works.com', N'M', 1, N'C', CAST(N'2019-05-26' AS Date))
GO
INSERT [dbo].[Usuario] ([UsuarioId], [CPF], [Nome], [DataNascimento], [Fone], [Email], [Sexo], [CargoId], [Situacao], [DataCriacao]) VALUES (196, N'10102759723', N'Stephanie R Adams', CAST(N'1964-05-26' AS Date), N'492-555-0112', N'stephanie60@adventure-works.com', N'O', 3, N'S', CAST(N'2019-05-26' AS Date))
GO
INSERT [dbo].[Usuario] ([UsuarioId], [CPF], [Nome], [DataNascimento], [Fone], [Email], [Sexo], [CargoId], [Situacao], [DataCriacao]) VALUES (197, N'10102639735', N'Sydney  Adams', CAST(N'1976-05-26' AS Date), N'1 (11) 500 555-0124', N'sydney56@adventure-works.com', N'O', 1, N'S', CAST(N'2019-05-26' AS Date))
GO
INSERT [dbo].[Usuario] ([UsuarioId], [CPF], [Nome], [DataNascimento], [Fone], [Email], [Sexo], [CargoId], [Situacao], [DataCriacao]) VALUES (198, N'10168333165', N'Thomas  Adams', CAST(N'1966-05-26' AS Date), N'475-555-0159', N'thomas51@adventure-works.com', N'O', 1, N'A', CAST(N'2019-05-26' AS Date))
GO
INSERT [dbo].[Usuario] ([UsuarioId], [CPF], [Nome], [DataNascimento], [Fone], [Email], [Sexo], [CargoId], [Situacao], [DataCriacao]) VALUES (199, N'10038046195', N'Wyatt  Adams', CAST(N'1996-05-26' AS Date), N'989-555-0116', N'wyatt35@adventure-works.com', N'F', 1, N'S', CAST(N'2019-05-26' AS Date))
GO
INSERT [dbo].[Usuario] ([UsuarioId], [CPF], [Nome], [DataNascimento], [Fone], [Email], [Sexo], [CargoId], [Situacao], [DataCriacao]) VALUES (200, N'10044285571', N'Xavier C Adams', CAST(N'1972-05-26' AS Date), N'682-555-0196', N'xavier29@adventure-works.com', N'F', 5, N'S', CAST(N'2019-05-26' AS Date))
GO
INSERT [dbo].[Usuario] ([UsuarioId], [CPF], [Nome], [DataNascimento], [Fone], [Email], [Sexo], [CargoId], [Situacao], [DataCriacao]) VALUES (201, N'10003089691', N'Ronald L. Adina', CAST(N'1972-05-26' AS Date), N'453-555-0165', N'ronald0@adventure-works.com', N'M', 5, N'S', CAST(N'2019-05-26' AS Date))
GO
INSERT [dbo].[Usuario] ([UsuarioId], [CPF], [Nome], [DataNascimento], [Fone], [Email], [Sexo], [CargoId], [Situacao], [DataCriacao]) VALUES (202, N'10043875612', N'Osarumwense Uwaifiokun Agbonile', CAST(N'1973-05-26' AS Date), N'592-555-0152', N'osarumwense0@adventure-works.com', N'O', 4, N'A', CAST(N'2019-05-26' AS Date))
GO
INSERT [dbo].[Usuario] ([UsuarioId], [CPF], [Nome], [DataNascimento], [Fone], [Email], [Sexo], [CargoId], [Situacao], [DataCriacao]) VALUES (203, N'10003109689', N'Samuel N. Agcaoili', CAST(N'1970-05-26' AS Date), N'554-555-0110', N'samuel0@adventure-works.com', N'O', 2, N'A', CAST(N'2019-05-26' AS Date))
GO
SET IDENTITY_INSERT [dbo].[Usuario] OFF
GO
