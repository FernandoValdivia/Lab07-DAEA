USE Neptuno

ALTER PROC USP_InsCategoria
@IdCategoria INT,
@NombreCategoria VARCHAR(100),
@Descripcion TEXT
AS
BEGIN
INSERT INTO Neptuno.dbo.categorias(idcategoria, nombrecategoria, descripcion)
VALUES (@IdCategoria, @NombreCategoria, @Descripcion)
END

USP_InsCategoria 12,'Nueva Categoria','Descripcion ejemplo'


ALTER PROC USP_UpdCategoria
@IdCategoria INT,
@NombreCategoria VARCHAR(100),
@Descripcion TEXT
AS
BEGIN
UPDATE Neptuno.dbo.categorias SET nombrecategoria=@NombreCategoria, descripcion=@Descripcion
WHERE idcategoria=@IdCategoria
END

ALTER PROC USP_DelCategoria
@IdCategoria INT
AS
BEGIN
DELETE FROM Neptuno.dbo.categorias WHERE idcategoria=@IdCategoria
END

USP_DelCategoria 11

CREATE PROC USP_GetCategoria02
@IdCategoria INT=0
AS
BEGIN
SELECT idcategoria, nombrecategoria, descripcion
FROM Neptuno.dbo.categorias
WHERE idcategoria=@IdCategoria or @IdCategoria=0
END

USP_GetCategoria02