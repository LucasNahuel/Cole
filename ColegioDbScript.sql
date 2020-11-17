
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 03/16/2020 16:28:32
-- Generated from EDMX file: C:\Users\munoz\source\repos\Cole\Cole\Models\ColegioModel.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [Colegio];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK__Alumno__Dni__4E88ABD4]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Alumno] DROP CONSTRAINT [FK__Alumno__Dni__4E88ABD4];
GO
IF OBJECT_ID(N'[dbo].[FK__Alumno__DniTutor__4F7CD00D]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Alumno] DROP CONSTRAINT [FK__Alumno__DniTutor__4F7CD00D];
GO
IF OBJECT_ID(N'[dbo].[FK__Asiste__DniAlumn__693CA210]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Asiste] DROP CONSTRAINT [FK__Asiste__DniAlumn__693CA210];
GO
IF OBJECT_ID(N'[dbo].[FK__Califica__DniAlu__74AE54BC]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Califica] DROP CONSTRAINT [FK__Califica__DniAlu__74AE54BC];
GO
IF OBJECT_ID(N'[dbo].[FK__Califica__DniPro__75A278F5]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Califica] DROP CONSTRAINT [FK__Califica__DniPro__75A278F5];
GO
IF OBJECT_ID(N'[dbo].[FK__Dicta__año__70DDC3D8]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Dicta] DROP CONSTRAINT [FK__Dicta__año__70DDC3D8];
GO
IF OBJECT_ID(N'[dbo].[FK__Evaluacio__Nombr__5CD6CB2B]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Evaluacion] DROP CONSTRAINT [FK__Evaluacio__Nombr__5CD6CB2B];
GO
IF OBJECT_ID(N'[dbo].[FK__Inasisten__DniAl__656C112C]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Inasistencia] DROP CONSTRAINT [FK__Inasisten__DniAl__656C112C];
GO
IF OBJECT_ID(N'[dbo].[FK__Instituci__DniAd__7A672E12]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Institucion] DROP CONSTRAINT [FK__Instituci__DniAd__7A672E12];
GO
IF OBJECT_ID(N'[dbo].[FK__Mensaje__DniEmis__5FB337D6]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Mensaje] DROP CONSTRAINT [FK__Mensaje__DniEmis__5FB337D6];
GO
IF OBJECT_ID(N'[dbo].[FK__Mensaje__DniRece__60A75C0F]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Mensaje] DROP CONSTRAINT [FK__Mensaje__DniRece__60A75C0F];
GO
IF OBJECT_ID(N'[dbo].[FK__Paga__DniAlumno__6D0D32F4]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Paga] DROP CONSTRAINT [FK__Paga__DniAlumno__6D0D32F4];
GO
IF OBJECT_ID(N'[dbo].[FK__Paga__FechaDelMe__6E01572D]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Paga] DROP CONSTRAINT [FK__Paga__FechaDelMe__6E01572D];
GO
IF OBJECT_ID(N'[dbo].[FK__Profesor__Dni__52593CB8]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Profesor] DROP CONSTRAINT [FK__Profesor__Dni__52593CB8];
GO
IF OBJECT_ID(N'[dbo].[FK__Titulo__Dni__5441852A]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Titulo] DROP CONSTRAINT [FK__Titulo__Dni__5441852A];
GO
IF OBJECT_ID(N'[dbo].[FK__Tutor__Dni__4BAC3F29]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Tutor] DROP CONSTRAINT [FK__Tutor__Dni__4BAC3F29];
GO
IF OBJECT_ID(N'[dbo].[FK_Asiste_Curso1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Asiste] DROP CONSTRAINT [FK_Asiste_Curso1];
GO
IF OBJECT_ID(N'[dbo].[FK_Califica_Evaluacion1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Califica] DROP CONSTRAINT [FK_Califica_Evaluacion1];
GO
IF OBJECT_ID(N'[dbo].[FK_Dicta_Curso1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Dicta] DROP CONSTRAINT [FK_Dicta_Curso1];
GO
IF OBJECT_ID(N'[dbo].[FK_Dicta_Profesor]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Dicta] DROP CONSTRAINT [FK_Dicta_Profesor];
GO
IF OBJECT_ID(N'[dbo].[FK_Publicacion_Materia]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Publicacion] DROP CONSTRAINT [FK_Publicacion_Materia];
GO
IF OBJECT_ID(N'[dbo].[FK_Publicacion_Profesor]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Publicacion] DROP CONSTRAINT [FK_Publicacion_Profesor];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Alumno]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Alumno];
GO
IF OBJECT_ID(N'[dbo].[Asiste]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Asiste];
GO
IF OBJECT_ID(N'[dbo].[Califica]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Califica];
GO
IF OBJECT_ID(N'[dbo].[Cuota]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Cuota];
GO
IF OBJECT_ID(N'[dbo].[Curso]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Curso];
GO
IF OBJECT_ID(N'[dbo].[Dicta]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Dicta];
GO
IF OBJECT_ID(N'[dbo].[Evaluacion]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Evaluacion];
GO
IF OBJECT_ID(N'[dbo].[Inasistencia]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Inasistencia];
GO
IF OBJECT_ID(N'[dbo].[Institucion]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Institucion];
GO
IF OBJECT_ID(N'[dbo].[Materia]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Materia];
GO
IF OBJECT_ID(N'[dbo].[Mensaje]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Mensaje];
GO
IF OBJECT_ID(N'[dbo].[Paga]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Paga];
GO
IF OBJECT_ID(N'[dbo].[Persona]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Persona];
GO
IF OBJECT_ID(N'[dbo].[Profesor]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Profesor];
GO
IF OBJECT_ID(N'[dbo].[Publicacion]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Publicacion];
GO
IF OBJECT_ID(N'[dbo].[Titulo]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Titulo];
GO
IF OBJECT_ID(N'[dbo].[Tutor]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Tutor];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Alumno'
CREATE TABLE [dbo].[Alumno] (
    [Dni] int  NOT NULL,
    [DniTutor] int  NULL
);
GO

-- Creating table 'Asiste'
CREATE TABLE [dbo].[Asiste] (
    [DniAlumno] int  NOT NULL,
    [año] datetime  NOT NULL,
    [IdCurso] int  NOT NULL
);
GO

-- Creating table 'Califica'
CREATE TABLE [dbo].[Califica] (
    [DniAlumno] int  NOT NULL,
    [DniProfesor] int  NOT NULL,
    [Nota] int  NULL,
    [IdEvaluacion] int  NOT NULL
);
GO

-- Creating table 'Cuota'
CREATE TABLE [dbo].[Cuota] (
    [FechaDelMes] datetime  NOT NULL,
    [Monto] float  NULL
);
GO

-- Creating table 'Curso'
CREATE TABLE [dbo].[Curso] (
    [Nro] int  NOT NULL,
    [Division] varchar(20)  NOT NULL,
    [Id] int IDENTITY(1,1) NOT NULL,
    [Nivel] varchar(10)  NOT NULL
);
GO

-- Creating table 'Dicta'
CREATE TABLE [dbo].[Dicta] (
    [IdMateria] int  NOT NULL,
    [año] datetime  NOT NULL,
    [IdCurso] int  NOT NULL,
    [DniProfesor] int  NOT NULL
);
GO

-- Creating table 'Evaluacion'
CREATE TABLE [dbo].[Evaluacion] (
    [Fecha] datetime  NOT NULL,
    [Titulo] varchar(30)  NOT NULL,
    [Tipo] varchar(30)  NULL,
    [IdMateria] int  NOT NULL,
    [Id] int IDENTITY(1,1) NOT NULL
);
GO

-- Creating table 'Inasistencia'
CREATE TABLE [dbo].[Inasistencia] (
    [DniAlumno] int  NOT NULL,
    [Fecha] datetime  NOT NULL,
    [EsMedia] bit  NULL,
    [Completa] bit  NULL
);
GO

-- Creating table 'Institucion'
CREATE TABLE [dbo].[Institucion] (
    [Id] varchar(1)  NOT NULL,
    [Nombre] varchar(50)  NULL,
    [Numero] int  NULL,
    [Categoria] varchar(20)  NULL,
    [NumeroTelefono] int  NULL,
    [Direccion] varchar(50)  NULL,
    [DniAdministrador] int  NULL
);
GO

-- Creating table 'Materia'
CREATE TABLE [dbo].[Materia] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Nombre] varchar(50)  NOT NULL
);
GO

-- Creating table 'Mensaje'
CREATE TABLE [dbo].[Mensaje] (
    [DniEmisor] int  NOT NULL,
    [FechaYHora] datetime  NOT NULL,
    [DniReceptor] int  NULL,
    [Texto] varchar(max)  NULL
);
GO

-- Creating table 'Paga'
CREATE TABLE [dbo].[Paga] (
    [DniAlumno] int  NOT NULL,
    [FechaDelMes] datetime  NOT NULL,
    [NroRecibo] int  NOT NULL,
    [FechaPago] datetime  NULL,
    [Lugar] varchar(32)  NULL
);
GO

-- Creating table 'Persona'
CREATE TABLE [dbo].[Persona] (
    [Dni] int  NOT NULL,
    [Cuil] varchar(13)  NULL,
    [TelCelular] int  NULL,
    [TelFijo] int  NULL,
    [Contraseña] varchar(32)  NULL,
    [Sexo] char(1)  NULL,
    [Domicilio] varchar(100)  NULL,
    [Nacionalidad] varchar(32)  NULL,
    [Nombre] varchar(20)  NULL,
    [Apellido] varchar(20)  NULL,
    [FechaNacimiento] datetime  NULL
);
GO

-- Creating table 'Profesor'
CREATE TABLE [dbo].[Profesor] (
    [Dni] int  NOT NULL
);
GO

-- Creating table 'Publicacion'
CREATE TABLE [dbo].[Publicacion] (
    [DniProfesor] int  NOT NULL,
    [IdMateria] int  NOT NULL,
    [FechaYHora] datetime  NOT NULL,
    [Mensaje] varchar(max)  NULL
);
GO

-- Creating table 'Titulo'
CREATE TABLE [dbo].[Titulo] (
    [Dni] int  NOT NULL,
    [Nombre] varchar(50)  NOT NULL
);
GO

-- Creating table 'Tutor'
CREATE TABLE [dbo].[Tutor] (
    [Dni] int  NOT NULL,
    [Ocupacion] varchar(50)  NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Dni] in table 'Alumno'
ALTER TABLE [dbo].[Alumno]
ADD CONSTRAINT [PK_Alumno]
    PRIMARY KEY CLUSTERED ([Dni] ASC);
GO

-- Creating primary key on [DniAlumno], [año], [IdCurso] in table 'Asiste'
ALTER TABLE [dbo].[Asiste]
ADD CONSTRAINT [PK_Asiste]
    PRIMARY KEY CLUSTERED ([DniAlumno], [año], [IdCurso] ASC);
GO

-- Creating primary key on [DniAlumno], [DniProfesor], [IdEvaluacion] in table 'Califica'
ALTER TABLE [dbo].[Califica]
ADD CONSTRAINT [PK_Califica]
    PRIMARY KEY CLUSTERED ([DniAlumno], [DniProfesor], [IdEvaluacion] ASC);
GO

-- Creating primary key on [FechaDelMes] in table 'Cuota'
ALTER TABLE [dbo].[Cuota]
ADD CONSTRAINT [PK_Cuota]
    PRIMARY KEY CLUSTERED ([FechaDelMes] ASC);
GO

-- Creating primary key on [Id] in table 'Curso'
ALTER TABLE [dbo].[Curso]
ADD CONSTRAINT [PK_Curso]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [IdMateria], [año], [IdCurso] in table 'Dicta'
ALTER TABLE [dbo].[Dicta]
ADD CONSTRAINT [PK_Dicta]
    PRIMARY KEY CLUSTERED ([IdMateria], [año], [IdCurso] ASC);
GO

-- Creating primary key on [Id] in table 'Evaluacion'
ALTER TABLE [dbo].[Evaluacion]
ADD CONSTRAINT [PK_Evaluacion]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [DniAlumno], [Fecha] in table 'Inasistencia'
ALTER TABLE [dbo].[Inasistencia]
ADD CONSTRAINT [PK_Inasistencia]
    PRIMARY KEY CLUSTERED ([DniAlumno], [Fecha] ASC);
GO

-- Creating primary key on [Id] in table 'Institucion'
ALTER TABLE [dbo].[Institucion]
ADD CONSTRAINT [PK_Institucion]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Materia'
ALTER TABLE [dbo].[Materia]
ADD CONSTRAINT [PK_Materia]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [DniEmisor], [FechaYHora] in table 'Mensaje'
ALTER TABLE [dbo].[Mensaje]
ADD CONSTRAINT [PK_Mensaje]
    PRIMARY KEY CLUSTERED ([DniEmisor], [FechaYHora] ASC);
GO

-- Creating primary key on [DniAlumno], [FechaDelMes] in table 'Paga'
ALTER TABLE [dbo].[Paga]
ADD CONSTRAINT [PK_Paga]
    PRIMARY KEY CLUSTERED ([DniAlumno], [FechaDelMes] ASC);
GO

-- Creating primary key on [Dni] in table 'Persona'
ALTER TABLE [dbo].[Persona]
ADD CONSTRAINT [PK_Persona]
    PRIMARY KEY CLUSTERED ([Dni] ASC);
GO

-- Creating primary key on [Dni] in table 'Profesor'
ALTER TABLE [dbo].[Profesor]
ADD CONSTRAINT [PK_Profesor]
    PRIMARY KEY CLUSTERED ([Dni] ASC);
GO

-- Creating primary key on [DniProfesor], [IdMateria], [FechaYHora] in table 'Publicacion'
ALTER TABLE [dbo].[Publicacion]
ADD CONSTRAINT [PK_Publicacion]
    PRIMARY KEY CLUSTERED ([DniProfesor], [IdMateria], [FechaYHora] ASC);
GO

-- Creating primary key on [Dni], [Nombre] in table 'Titulo'
ALTER TABLE [dbo].[Titulo]
ADD CONSTRAINT [PK_Titulo]
    PRIMARY KEY CLUSTERED ([Dni], [Nombre] ASC);
GO

-- Creating primary key on [Dni] in table 'Tutor'
ALTER TABLE [dbo].[Tutor]
ADD CONSTRAINT [PK_Tutor]
    PRIMARY KEY CLUSTERED ([Dni] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [Dni] in table 'Alumno'
ALTER TABLE [dbo].[Alumno]
ADD CONSTRAINT [FK__Alumno__Dni__4E88ABD4]
    FOREIGN KEY ([Dni])
    REFERENCES [dbo].[Persona]
        ([Dni])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [DniTutor] in table 'Alumno'
ALTER TABLE [dbo].[Alumno]
ADD CONSTRAINT [FK__Alumno__DniTutor__4F7CD00D]
    FOREIGN KEY ([DniTutor])
    REFERENCES [dbo].[Tutor]
        ([Dni])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__Alumno__DniTutor__4F7CD00D'
CREATE INDEX [IX_FK__Alumno__DniTutor__4F7CD00D]
ON [dbo].[Alumno]
    ([DniTutor]);
GO

-- Creating foreign key on [DniAlumno] in table 'Asiste'
ALTER TABLE [dbo].[Asiste]
ADD CONSTRAINT [FK__Asiste__DniAlumn__693CA210]
    FOREIGN KEY ([DniAlumno])
    REFERENCES [dbo].[Alumno]
        ([Dni])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [DniAlumno] in table 'Califica'
ALTER TABLE [dbo].[Califica]
ADD CONSTRAINT [FK__Califica__DniAlu__74AE54BC]
    FOREIGN KEY ([DniAlumno])
    REFERENCES [dbo].[Alumno]
        ([Dni])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [DniAlumno] in table 'Inasistencia'
ALTER TABLE [dbo].[Inasistencia]
ADD CONSTRAINT [FK__Inasisten__DniAl__656C112C]
    FOREIGN KEY ([DniAlumno])
    REFERENCES [dbo].[Alumno]
        ([Dni])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [DniAlumno] in table 'Paga'
ALTER TABLE [dbo].[Paga]
ADD CONSTRAINT [FK__Paga__DniAlumno__6D0D32F4]
    FOREIGN KEY ([DniAlumno])
    REFERENCES [dbo].[Alumno]
        ([Dni])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [IdCurso] in table 'Asiste'
ALTER TABLE [dbo].[Asiste]
ADD CONSTRAINT [FK_Asiste_Curso1]
    FOREIGN KEY ([IdCurso])
    REFERENCES [dbo].[Curso]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Asiste_Curso1'
CREATE INDEX [IX_FK_Asiste_Curso1]
ON [dbo].[Asiste]
    ([IdCurso]);
GO

-- Creating foreign key on [DniProfesor] in table 'Califica'
ALTER TABLE [dbo].[Califica]
ADD CONSTRAINT [FK__Califica__DniPro__75A278F5]
    FOREIGN KEY ([DniProfesor])
    REFERENCES [dbo].[Profesor]
        ([Dni])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__Califica__DniPro__75A278F5'
CREATE INDEX [IX_FK__Califica__DniPro__75A278F5]
ON [dbo].[Califica]
    ([DniProfesor]);
GO

-- Creating foreign key on [IdEvaluacion] in table 'Califica'
ALTER TABLE [dbo].[Califica]
ADD CONSTRAINT [FK_Califica_Evaluacion1]
    FOREIGN KEY ([IdEvaluacion])
    REFERENCES [dbo].[Evaluacion]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Califica_Evaluacion1'
CREATE INDEX [IX_FK_Califica_Evaluacion1]
ON [dbo].[Califica]
    ([IdEvaluacion]);
GO

-- Creating foreign key on [FechaDelMes] in table 'Paga'
ALTER TABLE [dbo].[Paga]
ADD CONSTRAINT [FK__Paga__FechaDelMe__6E01572D]
    FOREIGN KEY ([FechaDelMes])
    REFERENCES [dbo].[Cuota]
        ([FechaDelMes])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__Paga__FechaDelMe__6E01572D'
CREATE INDEX [IX_FK__Paga__FechaDelMe__6E01572D]
ON [dbo].[Paga]
    ([FechaDelMes]);
GO

-- Creating foreign key on [IdCurso] in table 'Dicta'
ALTER TABLE [dbo].[Dicta]
ADD CONSTRAINT [FK_Dicta_Curso1]
    FOREIGN KEY ([IdCurso])
    REFERENCES [dbo].[Curso]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Dicta_Curso1'
CREATE INDEX [IX_FK_Dicta_Curso1]
ON [dbo].[Dicta]
    ([IdCurso]);
GO

-- Creating foreign key on [IdMateria] in table 'Dicta'
ALTER TABLE [dbo].[Dicta]
ADD CONSTRAINT [FK__Dicta__año__70DDC3D8]
    FOREIGN KEY ([IdMateria])
    REFERENCES [dbo].[Materia]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [DniProfesor] in table 'Dicta'
ALTER TABLE [dbo].[Dicta]
ADD CONSTRAINT [FK_Dicta_Profesor]
    FOREIGN KEY ([DniProfesor])
    REFERENCES [dbo].[Profesor]
        ([Dni])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Dicta_Profesor'
CREATE INDEX [IX_FK_Dicta_Profesor]
ON [dbo].[Dicta]
    ([DniProfesor]);
GO

-- Creating foreign key on [IdMateria] in table 'Evaluacion'
ALTER TABLE [dbo].[Evaluacion]
ADD CONSTRAINT [FK__Evaluacio__Nombr__5CD6CB2B]
    FOREIGN KEY ([IdMateria])
    REFERENCES [dbo].[Materia]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__Evaluacio__Nombr__5CD6CB2B'
CREATE INDEX [IX_FK__Evaluacio__Nombr__5CD6CB2B]
ON [dbo].[Evaluacion]
    ([IdMateria]);
GO

-- Creating foreign key on [DniAdministrador] in table 'Institucion'
ALTER TABLE [dbo].[Institucion]
ADD CONSTRAINT [FK__Instituci__DniAd__7A672E12]
    FOREIGN KEY ([DniAdministrador])
    REFERENCES [dbo].[Persona]
        ([Dni])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__Instituci__DniAd__7A672E12'
CREATE INDEX [IX_FK__Instituci__DniAd__7A672E12]
ON [dbo].[Institucion]
    ([DniAdministrador]);
GO

-- Creating foreign key on [IdMateria] in table 'Publicacion'
ALTER TABLE [dbo].[Publicacion]
ADD CONSTRAINT [FK_Publicacion_Materia]
    FOREIGN KEY ([IdMateria])
    REFERENCES [dbo].[Materia]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_Publicacion_Materia'
CREATE INDEX [IX_FK_Publicacion_Materia]
ON [dbo].[Publicacion]
    ([IdMateria]);
GO

-- Creating foreign key on [DniEmisor] in table 'Mensaje'
ALTER TABLE [dbo].[Mensaje]
ADD CONSTRAINT [FK__Mensaje__DniEmis__5FB337D6]
    FOREIGN KEY ([DniEmisor])
    REFERENCES [dbo].[Persona]
        ([Dni])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [DniReceptor] in table 'Mensaje'
ALTER TABLE [dbo].[Mensaje]
ADD CONSTRAINT [FK__Mensaje__DniRece__60A75C0F]
    FOREIGN KEY ([DniReceptor])
    REFERENCES [dbo].[Persona]
        ([Dni])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK__Mensaje__DniRece__60A75C0F'
CREATE INDEX [IX_FK__Mensaje__DniRece__60A75C0F]
ON [dbo].[Mensaje]
    ([DniReceptor]);
GO

-- Creating foreign key on [Dni] in table 'Profesor'
ALTER TABLE [dbo].[Profesor]
ADD CONSTRAINT [FK__Profesor__Dni__52593CB8]
    FOREIGN KEY ([Dni])
    REFERENCES [dbo].[Persona]
        ([Dni])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Dni] in table 'Tutor'
ALTER TABLE [dbo].[Tutor]
ADD CONSTRAINT [FK__Tutor__Dni__4BAC3F29]
    FOREIGN KEY ([Dni])
    REFERENCES [dbo].[Persona]
        ([Dni])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Dni] in table 'Titulo'
ALTER TABLE [dbo].[Titulo]
ADD CONSTRAINT [FK__Titulo__Dni__5441852A]
    FOREIGN KEY ([Dni])
    REFERENCES [dbo].[Profesor]
        ([Dni])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [DniProfesor] in table 'Publicacion'
ALTER TABLE [dbo].[Publicacion]
ADD CONSTRAINT [FK_Publicacion_Profesor]
    FOREIGN KEY ([DniProfesor])
    REFERENCES [dbo].[Profesor]
        ([Dni])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------