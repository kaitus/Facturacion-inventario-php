-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-10-2016 a las 22:49:09
-- Versión del servidor: 10.1.16-MariaDB
-- Versión de PHP: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bdempresa`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bannerempresa`
--

CREATE TABLE `bannerempresa` (
  `IdEmpresa` int(10) NOT NULL,
  `NombreEmpresa` varchar(100) COLLATE utf8_bin NOT NULL,
  `TituloEmpresa` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `LogoEmpresa` varchar(200) COLLATE utf8_bin NOT NULL,
  `LogoPequeno` varchar(200) COLLATE utf8_bin NOT NULL,
  `BtnComenzar` varchar(50) COLLATE utf8_bin NOT NULL,
  `UrlVideo` varchar(300) COLLATE utf8_bin NOT NULL,
  `ImgObjetivoEmpresa` varchar(100) COLLATE utf8_bin NOT NULL,
  `Agradecimientos` varchar(200) COLLATE utf8_bin NOT NULL,
  `Estado` bit(1) NOT NULL,
  `CodigoEmpresa` varchar(50) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `bannerempresa`
--

INSERT INTO `bannerempresa` (`IdEmpresa`, `NombreEmpresa`, `TituloEmpresa`, `LogoEmpresa`, `LogoPequeno`, `BtnComenzar`, `UrlVideo`, `ImgObjetivoEmpresa`, `Agradecimientos`, `Estado`, `CodigoEmpresa`) VALUES
(1, 'ClipStore', 'Bienvenido a Clip Store', 'img/logo.png', 'img/small-logo.png', 'COMENZAR', 'recursos/clipvideo.gif', 'img/iphone.jpg', 'Es un placer trabajar con un equipo de trabajo excepcional. Todo esto se debe a todo el esfuerzo y el tiempo invertido en este gran proyecto!! \r\nGracias Muchachos', b'1', 'clipStore');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `constantesistema`
--

CREATE TABLE `constantesistema` (
  `IdConstante` int(10) NOT NULL,
  `CodigoConstante` varchar(10) COLLATE utf8_bin NOT NULL,
  `TipoConstante` varchar(2) COLLATE utf8_bin NOT NULL,
  `ValorConstante` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `constantesistema`
--

INSERT INTO `constantesistema` (`IdConstante`, `CodigoConstante`, `TipoConstante`, `ValorConstante`) VALUES
(1, 'EMP', 'T', 'clipStore');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacto`
--

CREATE TABLE `contacto` (
  `IdContacto` int(11) NOT NULL,
  `IdEmpresa` int(11) NOT NULL,
  `Direccion` varchar(100) NOT NULL,
  `Telefonos` varchar(100) NOT NULL,
  `Mail` varchar(100) NOT NULL,
  `Horarrio` text NOT NULL,
  `Estado` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `contacto`
--

INSERT INTO `contacto` (`IdContacto`, `IdEmpresa`, `Direccion`, `Telefonos`, `Mail`, `Horarrio`, `Estado`) VALUES
(1, 1, 'Calle 9 Número 6 - 30 Local 2 Edificio TETRIS, Floridablanca.', '6055891', 'clipstoreapp@gmail.com', '<h3><i class="fa-clock-o"></i>Horario:</h3>\r\n                                    <span><strong>Lunes a Sabado:</strong> 7:00am - 12:00pm / 2:00pm - 9:00pm<br><strong>Domingo:</strong> 2:00am - 7:00pm<br></span>', b'1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contactoweb`
--

CREATE TABLE `contactoweb` (
  `IdContactoWeb` int(10) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Mail` varchar(100) NOT NULL,
  `Comentario` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipotrabajo`
--

CREATE TABLE `equipotrabajo` (
  `IdEquipoTrabajo` int(10) NOT NULL,
  `IdGrupoEquipoTrabajo` int(10) NOT NULL,
  `NombreEquipoTrabajo` varchar(100) NOT NULL,
  `FotoEquipoTrabajo` varchar(200) NOT NULL,
  `DescripciónEquipoTrabajo` text NOT NULL,
  `RedSocialFacebook` varchar(200) NOT NULL,
  `RedSocialTwitter` varchar(200) NOT NULL,
  `RedSocialGoogle` varchar(200) NOT NULL,
  `Estado` bit(1) NOT NULL,
  `Cargo` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `equipotrabajo`
--

INSERT INTO `equipotrabajo` (`IdEquipoTrabajo`, `IdGrupoEquipoTrabajo`, `NombreEquipoTrabajo`, `FotoEquipoTrabajo`, `DescripciónEquipoTrabajo`, `RedSocialFacebook`, `RedSocialTwitter`, `RedSocialGoogle`, `Estado`, `Cargo`) VALUES
(1, 1, 'CARLOS DIAZ', 'img/team-leader-pic1.jpg', 'Soy una persona capaz del manejo de traza de metas y objetivos a un tiempo determinado, auto-mejoramiento de servicios disponibles de la infraestructura tecnológica.', 'https://www.facebook.com/carloseduardo.diazherrera', 'https://twitter.com/eduarbboy12', 'https://plus.google.com/u/0/107714362888704710380', b'1', 'Director Ejecutivo'),
(2, 1, 'OSCAR CAMARGO', 'img/team-leader-pic2.jpg', 'Diseñador Grafico con 5 años de experiencia en implementar procesos productivos en el ambito de diseño publicitario.', 'https://www.facebook.com/bboyozkr?fref=ts', ' ', 'https://plus.google.com/u/0/115203806407996026603', b'1', 'Diseñador de Producto'),
(3, 1, 'MONICA PINTO', 'img/team-leader-pic3.jpg', 'Soy una persona formada en la excelencia, dispuesta a enfrentar retos en busqueda del cumplimiento de los objetivos planteados aportando el maximo esfuerzo.Soy una persona formada en la excelencia, dispuesta a enfrentar retos en busqueda del cumplimiento de los objetivos planteados aportando el maximo esfuerzo.', 'https://www.facebook.com/moniik.piinto', 'https://twitter.com/monicapinto23', 'https://plus.google.com/u/0/107848567171343577995', b'1', 'Administradora');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupoequipotrabajo`
--

CREATE TABLE `grupoequipotrabajo` (
  `IdGrupoEquipoTrabajo` int(10) NOT NULL,
  `IdEmpresa` int(10) NOT NULL,
  `NombreGrupoEquipoTrabajo` varchar(100) NOT NULL,
  `DescripcionGrupoEquipoTrabajo` text NOT NULL,
  `Estado` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `grupoequipotrabajo`
--

INSERT INTO `grupoequipotrabajo` (`IdGrupoEquipoTrabajo`, `IdEmpresa`, `NombreGrupoEquipoTrabajo`, `DescripcionGrupoEquipoTrabajo`, `Estado`) VALUES
(1, 1, 'EQUIPO CLIPSTORE', 'Conoce un poco mas a este gran equipo de trabajo.', b'1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menunavegación`
--

CREATE TABLE `menunavegación` (
  `IdMenuNavegacion` int(10) NOT NULL,
  `IdEmpresa` int(10) NOT NULL,
  `NombreMenu` varchar(100) COLLATE utf8_bin NOT NULL,
  `UrlMenu` varchar(200) COLLATE utf8_bin NOT NULL,
  `IndEstado` bit(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `menunavegación`
--

INSERT INTO `menunavegación` (`IdMenuNavegacion`, `IdEmpresa`, `NombreMenu`, `UrlMenu`, `IndEstado`) VALUES
(2, 1, 'Servicios', '#service', b'01'),
(3, 1, 'Portafolio', '#Portfolio', b'01'),
(4, 1, 'Clientes', '#client', b'01'),
(5, 1, 'Equipo', '#team', b'01'),
(6, 1, 'Contacto', '#contact', b'01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `objetivoempresa`
--

CREATE TABLE `objetivoempresa` (
  `IdObjetivoEmpresa` int(10) NOT NULL,
  `IdEmpresa` int(10) NOT NULL,
  `TituloObjetivo` varchar(100) COLLATE utf8_bin NOT NULL,
  `DescripciónObjetivoEmpresa` varchar(500) COLLATE utf8_bin NOT NULL,
  `Estado` bit(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `objetivoempresa`
--

INSERT INTO `objetivoempresa` (`IdObjetivoEmpresa`, `IdEmpresa`, `TituloObjetivo`, `DescripciónObjetivoEmpresa`, `Estado`) VALUES
(1, 1, 'CLIPSTORE', 'En Clip Store papelería y miscelánea tenemos excelentes productos de alta calidad destinado a satisfacer las necesidades de los clientes y precios que los sorprenderán, brindamos servicios a través de la comercialización y distribución de artículos de papelería, oficina, útiles escolares, servicio de copiado e impresión también recibirá un asesoramiento personalizado en el cual usted podrá exponernos todas las dudas y necesidades.', b'01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `objetivoempresadetalle`
--

CREATE TABLE `objetivoempresadetalle` (
  `IdObjetivoEmpresaDetalle` int(10) NOT NULL,
  `IdObjetivoEmpresa` int(10) NOT NULL,
  `TipoObjetivo` varchar(100) COLLATE utf8_bin NOT NULL,
  `DescripcionObjetivoEmpresa` text COLLATE utf8_bin NOT NULL,
  `ImagenObjetivo` varchar(100) COLLATE utf8_bin NOT NULL,
  `Estado` bit(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `objetivoempresadetalle`
--

INSERT INTO `objetivoempresadetalle` (`IdObjetivoEmpresaDetalle`, `IdObjetivoEmpresa`, `TipoObjetivo`, `DescripcionObjetivoEmpresa`, `ImagenObjetivo`, `Estado`) VALUES
(1, 1, 'MISIÓN', 'ClipStore, es una papeleria y miscelania que provee servicios y productos de alta calidad para el desarrollo del sector buscando permanentemente el bienestar de la comunidad.', 'fa-adjust', b'01'),
(2, 1, 'Visión', 'En el año 2020 ClipStore será una organización reconocida a nivel nacional e internacional por la excelencia e innovación de sus productos y servicios orientados principalmente a la comunidad.', 'fa-paper-plane-o', b'01'),
(3, 1, 'Valores de la empresa', '<p><strong>Transparencia:</strong> Realizamos nuestra gestión de forma objetiva, clara y verificable.<br/>\r\n                                            <strong>Respeto:</strong> Interactuamos reconociendo los intereses colectivos, la diversidad individual, la sostenibilidad de los recursos naturales y la institucionalidad.<br/>\r\n                                            <strong>Equidad:</strong> Equidad, igualdad e imparcialidad, buscando un impacto social positivo e inclusivo.<br/>\r\n                                            <strong>Integridad:</strong> Actuamos con firmeza, rectitud, honestidad, coherencia y sinceridad.. </p>', 'fa-archive', b'01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `portafolioempresa`
--

CREATE TABLE `portafolioempresa` (
  `IdPortafolioEmpresa` int(10) NOT NULL,
  `IdEmpresa` int(10) NOT NULL,
  `TituloPortafolio` varchar(100) COLLATE utf8_bin NOT NULL,
  `DescripcionPortafolio` text COLLATE utf8_bin NOT NULL,
  `Estado` bit(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `portafolioempresa`
--

INSERT INTO `portafolioempresa` (`IdPortafolioEmpresa`, `IdEmpresa`, `TituloPortafolio`, `DescripcionPortafolio`, `Estado`) VALUES
(1, 1, 'Portafolio', 'Portafolio de diseños frescos que mantendrá con ganas de más.', b'01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `IdProducto` int(10) NOT NULL,
  `NombreProducto` varchar(200) COLLATE utf8_bin NOT NULL,
  `imagenProducto` varchar(200) COLLATE utf8_bin NOT NULL,
  `IdProductoTipo` int(10) NOT NULL,
  `CodigoProducto` int(20) DEFAULT NULL,
  `CantidadExistencia` int(50) NOT NULL,
  `CantidadMinima` int(50) NOT NULL,
  `CantidadMaxima` int(50) NOT NULL,
  `PrecioCosto` float NOT NULL,
  `PrecioVenta` float NOT NULL,
  `IndEstado` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`IdProducto`, `NombreProducto`, `imagenProducto`, `IdProductoTipo`, `CodigoProducto`, `CantidadExistencia`, `CantidadMinima`, `CantidadMaxima`, `PrecioCosto`, `PrecioVenta`, `IndEstado`) VALUES
(1, 'Cuaderno 50 hojas rayado pequeño', 'img/Portfolio-pic1.jpg', 9, 0, 0, 2, 12, 0, 800, b'1'),
(2, 'Cuaderno 50 hojas cuadriculado pequeño', 'img/Portfolio-pic1.jpg', 9, 0, 0, 2, 12, 0, 800, b'1'),
(3, 'Cuaderno 50 hojas doble linea  pequeño', 'img/Portfolio-pic1.jpg', 9, 0, 0, 2, 12, 0, 800, b'1'),
(4, 'Cuaderno 100 hojas rayado grande', 'img/Portfolio-pic1.jpg', 9, 0, 0, 2, 12, 0, 2000, b'1'),
(5, 'Cuaderno 100 hojas cuadriculado grande ', 'img/Portfolio-pic1.jpg', 9, 0, 0, 2, 12, 0, 2000, b'1'),
(6, 'Cuaderno 100 hojas doble linea grande ', 'img/Portfolio-pic1.jpg', 9, 0, 0, 2, 12, 0, 2000, b'1'),
(7, 'Cuaderno 100 hojas rayado pequeño', 'img/Portfolio-pic1.jpg', 9, 0, 0, 2, 12, 0, 1000, b'1'),
(8, 'Cuaderno 100 hojas cuadriculado pequeño', 'img/Portfolio-pic1.jpg', 9, 0, 0, 2, 12, 0, 1000, b'1'),
(9, 'Cuaderno de 100 hojas doble linea pequeño', 'img/Portfolio-pic1.jpg', 9, 0, 0, 2, 12, 0, 1000, b'1'),
(10, 'Cuaderno 50 hojas rayado grande', 'img/Portfolio-pic1.jpg', 9, 0, 0, 2, 12, 0, 1600, b'1'),
(11, 'Cuaderno 50 hojas cuadriculado grande', 'img/Portfolio-pic1.jpg', 9, 0, 0, 2, 12, 0, 1600, b'1'),
(12, 'Cuaderno 50 hojas doble linea grande', 'img/Portfolio-pic1.jpg', 9, 0, 0, 2, 12, 0, 1600, b'1'),
(13, 'Lapicero rojo normal', 'img/Portfolio-pic1.jpg', 8, 0, 0, 2, 12, 0, 600, b'1'),
(14, 'Lapicero negro normal', 'img/Portfolio-pic1.jpg', 8, 0, 0, 2, 12, 0, 600, b'1'),
(15, 'Lapicero azul normal', 'img/Portfolio-pic1.jpg', 8, 0, 0, 2, 12, 0, 600, b'1'),
(16, 'Lapicero rosado normal', 'img/Portfolio-pic1.jpg', 8, 0, 0, 2, 12, 0, 600, b'1'),
(17, 'Lapicero morado normal', 'img/Portfolio-pic1.jpg', 8, 0, 0, 2, 12, 0, 600, b'1'),
(18, 'Block carta rayado', 'img/Portfolio-pic1.jpg', 11, 0, 0, 2, 12, 0, 2000, b'1'),
(19, 'Block carta cuadriculado', 'img/Portfolio-pic1.jpg', 11, 0, 0, 2, 12, 0, 2000, b'1'),
(20, 'Block carta blaco', 'img/Portfolio-pic1.jpg', 11, 0, 0, 2, 12, 0, 2000, b'1'),
(21, 'Block oficio rayado', 'img/Portfolio-pic1.jpg', 11, 0, 0, 2, 12, 0, 2500, b'1'),
(22, 'Block oficio cuadriculado', 'img/Portfolio-pic1.jpg', 11, 0, 0, 2, 12, 0, 2500, b'1'),
(23, 'Block oficio blanco', 'img/Portfolio-pic1.jpg', 1, 0, 0, 2, 12, 0, 2500, b'1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicioempresa`
--

CREATE TABLE `servicioempresa` (
  `IdServicio` int(10) NOT NULL,
  `IdEmpresa` int(10) NOT NULL,
  `TituloServicio` varchar(100) COLLATE utf8_bin NOT NULL,
  `DescripcionServicio` varchar(200) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `servicioempresa`
--

INSERT INTO `servicioempresa` (`IdServicio`, `IdEmpresa`, `TituloServicio`, `DescripcionServicio`) VALUES
(1, 1, 'SERVICIOS', 'Ofrecemos un servicio excepcional con productos de alta calidad.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicioempresadetalle`
--

CREATE TABLE `servicioempresadetalle` (
  `IdServicioDetalle` int(10) NOT NULL,
  `IdServicio` int(10) NOT NULL,
  `TituloServicioDetalle` varchar(100) COLLATE utf8_bin NOT NULL,
  `ImagenServicio` varchar(100) COLLATE utf8_bin NOT NULL,
  `DescripcionServicio` varchar(300) COLLATE utf8_bin NOT NULL,
  `IndEstado` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `servicioempresadetalle`
--

INSERT INTO `servicioempresadetalle` (`IdServicioDetalle`, `IdServicio`, `TituloServicioDetalle`, `ImagenServicio`, `DescripcionServicio`, `IndEstado`) VALUES
(1, 1, 'PAPELERÍA Y MATERIALES DE OFICINA.', 'fa-pencil', 'Papelería Clip Store tiene a su disposición un amplio portafolio de productos en papelería, escolares, artículos misceláneos y mobiliario de oficina.', b'1'),
(2, 1, 'Impresión.', 'fa-photo', 'Realizamos fotocopias a blanco y negro, Fotocopias a color, Impresión digital y escaneo de documentos.', b'1'),
(3, 1, 'Minutos y Recargas', 'fa-phone', 'Minutos a todo destino para comunicarse con tus seres queridos que estan distantes.', b'1'),
(4, 1, 'Regalos para momentos especiales.', 'fa-gift', 'Tenemos a disposición de nuestros clientes una variedad de regalos para hacer mas especiales esos momentos en familia.', b'1'),
(5, 1, 'CARLOS A LA VENTA', 'fa-gift', 'SE VENDEN EMPANADAS', b'0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipoproducto`
--

CREATE TABLE `tipoproducto` (
  `IdProductoTipo` int(10) NOT NULL,
  `NombreProductoTipo` varchar(200) COLLATE utf8_bin NOT NULL,
  `DescripcionTipoProducto` varchar(300) COLLATE utf8_bin NOT NULL,
  `ImagenTipoProducto` varchar(200) COLLATE utf8_bin NOT NULL,
  `ClaseTipoProducto` varchar(100) COLLATE utf8_bin NOT NULL,
  `OrdenPrioridad` int(11) NOT NULL,
  `IndEstado` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Volcado de datos para la tabla `tipoproducto`
--

INSERT INTO `tipoproducto` (`IdProductoTipo`, `NombreProductoTipo`, `DescripcionTipoProducto`, `ImagenTipoProducto`, `ClaseTipoProducto`, `OrdenPrioridad`, `IndEstado`) VALUES
(1, 'Papel', 'Descripción tipo producto', '', 'cspapel', 2, b'1'),
(6, 'Carton', 'DescripcionTipoProducto', '', 'csCarton', 3, b'1'),
(7, 'Icopor', 'DescripcionTipoProducto', '', 'csIcopor', 4, b'1'),
(8, 'Esferos', 'DescripcionTipoProducto', '', 'csEsferos', 5, b'1'),
(9, 'Cuadernos', 'DescripcionTipoProducto', '', 'csCuadernos', 6, b'1'),
(10, 'Pegantes', 'DescripcionTipoProducto', '', 'csPegantes', 7, b'1'),
(11, 'Blocks', 'DescripcionTipoProducto', '', 'csBlocks', 8, b'1'),
(12, 'Pinturas', 'DescripcionTipoProducto', '', 'csPinturas', 9, b'1'),
(13, 'Colores', 'DescripcionTipoProducto', '', 'csColores', 10, b'1'),
(14, 'Crayolas', 'DescripcionTipoProducto', '', 'csCrayolas', 11, b'1'),
(15, 'Grafos ', 'DescripcionTipoProducto', '', 'csGrafos', 12, b'1'),
(16, 'Carpetas', 'DescripcionTipoProducto', '', 'csCarpetas', 13, b'1'),
(17, 'utensilios', 'DescripcionTipoProducto', '', 'csutensilios', 14, b'1'),
(18, 'Bolsas de regalo', 'DescripcionTipoProducto', '', 'csBolsasregalo', 15, b'1'),
(19, 'Pinceles', 'DescripcionTipoProducto', '', 'csPinceles', 16, b'1'),
(20, 'Tarjetas', 'DescripcionTipoProducto', '', 'csTarjetas', 17, b'1'),
(21, 'Ligas', 'DescripcionTipoProducto', '', 'csLigas', 18, b'1'),
(22, 'Bombas', 'DescripcionTipoProducto', '', 'csBombas', 19, b'1'),
(23, 'Plastilina', 'DescripcionTipoProducto', '', 'csPlastilina', 20, b'1'),
(24, 'Otros', 'DescripcionTipoProducto', '', '*', 1, b'1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipoproductoempresa`
--

CREATE TABLE `tipoproductoempresa` (
  `IdTipoProductoEmpresa` int(10) NOT NULL,
  `IdProductoTipo` int(10) NOT NULL,
  `IdEmpresa` int(10) NOT NULL,
  `Estado` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tipoproductoempresa`
--

INSERT INTO `tipoproductoempresa` (`IdTipoProductoEmpresa`, `IdProductoTipo`, `IdEmpresa`, `Estado`) VALUES
(1, 1, 1, b'1'),
(2, 6, 1, b'1'),
(3, 7, 1, b'1'),
(4, 8, 1, b'1'),
(5, 9, 1, b'1'),
(6, 10, 1, b'1'),
(7, 11, 1, b'1'),
(8, 12, 1, b'1'),
(9, 13, 1, b'1'),
(10, 14, 1, b'1'),
(11, 15, 1, b'1'),
(12, 16, 1, b'1'),
(13, 17, 1, b'1');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `bannerempresa`
--
ALTER TABLE `bannerempresa`
  ADD PRIMARY KEY (`IdEmpresa`);

--
-- Indices de la tabla `constantesistema`
--
ALTER TABLE `constantesistema`
  ADD PRIMARY KEY (`IdConstante`);

--
-- Indices de la tabla `contacto`
--
ALTER TABLE `contacto`
  ADD PRIMARY KEY (`IdContacto`);

--
-- Indices de la tabla `contactoweb`
--
ALTER TABLE `contactoweb`
  ADD PRIMARY KEY (`IdContactoWeb`);

--
-- Indices de la tabla `equipotrabajo`
--
ALTER TABLE `equipotrabajo`
  ADD PRIMARY KEY (`IdEquipoTrabajo`);

--
-- Indices de la tabla `grupoequipotrabajo`
--
ALTER TABLE `grupoequipotrabajo`
  ADD PRIMARY KEY (`IdGrupoEquipoTrabajo`);

--
-- Indices de la tabla `menunavegación`
--
ALTER TABLE `menunavegación`
  ADD PRIMARY KEY (`IdMenuNavegacion`);

--
-- Indices de la tabla `objetivoempresa`
--
ALTER TABLE `objetivoempresa`
  ADD PRIMARY KEY (`IdObjetivoEmpresa`);

--
-- Indices de la tabla `objetivoempresadetalle`
--
ALTER TABLE `objetivoempresadetalle`
  ADD PRIMARY KEY (`IdObjetivoEmpresaDetalle`);

--
-- Indices de la tabla `portafolioempresa`
--
ALTER TABLE `portafolioempresa`
  ADD PRIMARY KEY (`IdPortafolioEmpresa`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`IdProducto`),
  ADD KEY `IdProductoTipo` (`IdProductoTipo`);

--
-- Indices de la tabla `servicioempresa`
--
ALTER TABLE `servicioempresa`
  ADD PRIMARY KEY (`IdServicio`);

--
-- Indices de la tabla `servicioempresadetalle`
--
ALTER TABLE `servicioempresadetalle`
  ADD PRIMARY KEY (`IdServicioDetalle`);

--
-- Indices de la tabla `tipoproducto`
--
ALTER TABLE `tipoproducto`
  ADD PRIMARY KEY (`IdProductoTipo`);

--
-- Indices de la tabla `tipoproductoempresa`
--
ALTER TABLE `tipoproductoempresa`
  ADD PRIMARY KEY (`IdTipoProductoEmpresa`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `bannerempresa`
--
ALTER TABLE `bannerempresa`
  MODIFY `IdEmpresa` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `constantesistema`
--
ALTER TABLE `constantesistema`
  MODIFY `IdConstante` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `contacto`
--
ALTER TABLE `contacto`
  MODIFY `IdContacto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `contactoweb`
--
ALTER TABLE `contactoweb`
  MODIFY `IdContactoWeb` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `equipotrabajo`
--
ALTER TABLE `equipotrabajo`
  MODIFY `IdEquipoTrabajo` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `grupoequipotrabajo`
--
ALTER TABLE `grupoequipotrabajo`
  MODIFY `IdGrupoEquipoTrabajo` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `menunavegación`
--
ALTER TABLE `menunavegación`
  MODIFY `IdMenuNavegacion` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `objetivoempresa`
--
ALTER TABLE `objetivoempresa`
  MODIFY `IdObjetivoEmpresa` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `objetivoempresadetalle`
--
ALTER TABLE `objetivoempresadetalle`
  MODIFY `IdObjetivoEmpresaDetalle` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `portafolioempresa`
--
ALTER TABLE `portafolioempresa`
  MODIFY `IdPortafolioEmpresa` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `IdProducto` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT de la tabla `servicioempresa`
--
ALTER TABLE `servicioempresa`
  MODIFY `IdServicio` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `servicioempresadetalle`
--
ALTER TABLE `servicioempresadetalle`
  MODIFY `IdServicioDetalle` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `tipoproducto`
--
ALTER TABLE `tipoproducto`
  MODIFY `IdProductoTipo` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT de la tabla `tipoproductoempresa`
--
ALTER TABLE `tipoproductoempresa`
  MODIFY `IdTipoProductoEmpresa` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `FK_Producto_IdProductoTipo` FOREIGN KEY (`IdProductoTipo`) REFERENCES `tipoproducto` (`IdProductoTipo`),
  ADD CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`IdProductoTipo`) REFERENCES `tipoproducto` (`IdProductoTipo`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
