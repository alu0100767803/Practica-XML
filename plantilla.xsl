<?xml version='1.0' ?>
<xsl:stylesheet version="1.1"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">


    <xsl:template match="/">
        <html>
            <link rel="stylesheet" type="text/css" href="style.css" />
           <body>
                <div id="cabecera">
               <h1> CURRICULUM </h1>
                </div>

               <xsl:for-each select="curriculum">
                 <div class="curriculum">
                   <div id="perfil">
                     <img style="height:100px; width:100px;" src="images/boss.png"/>
                   </div>

                   <div class="cuadro">
                 <xsl:for-each select="datos_personales">
                   <h2 class="titulo">Datos Personales </h2>
                    <span class="titulo2"> Nombre: </span><xsl:value-of select="nombre"/><br/>
                    <span class="titulo2"> Apellidos: </span><xsl:value-of select="apellidos"/><br/>
                    <span class="titulo2"> Fecha de Nacimiento: </span><xsl:value-of select="fecha_nacimiento"/><br/>
                    <span class="titulo2"> Lugar de Nacimiento: </span><xsl:value-of select="lugar_nacimiento"/><br/>
                    <span class="titulo2"> Dirección: </span><xsl:value-of select="direccion"/><br/>
                    <h3> Teléfonos </h3><xsl:for-each select="telefonos">
                      <span class="titulo2"> Fijo: </span><xsl:value-of select="fijo"/><br/>
                      <span class="titulo2"> Móvil: </span><xsl:value-of select="movil"/><br/>
                    </xsl:for-each>
                      <span class="titulo2"> Correo Electrónico: </span><xsl:value-of select="correo"/><br/>
                    </xsl:for-each>
                  </div>

                  <div class="cuadro">
                    <xsl:for-each select="formacion_academica">
                      <h2 class="titulo">Formación Académica </h2>
                      <span class="titulo2"> Nombre de titulación: </span><xsl:value-of select="titulacion/nombre_titulacion"/><br/>
                      <span class="titulo2"> Año de inicio: </span><xsl:value-of select="titulacion/año_inicio"/><br/>
                      <span class="titulo2"> Año de finalización: </span><xsl:value-of select="titulacion/año_fin"/><br/>
                      <span class="titulo2"> Centro de estudio: </span><xsl:value-of select="titulacion/centro_estudio"/><br/>
                    </xsl:for-each>
                    </div>

                    <div class="cuadro">
                    <xsl:for-each select="practicas_profesionales">
                      <h2 class="titulo">Prácticas profesionales </h2>
                      <xsl:for-each select="empresa">
                      <span class="titulo2"> Nombre de empresa: </span><xsl:value-of select="nombre_empresa"/><br/>
                      <span class="titulo2"> Localidad: </span><xsl:value-of select="localidad"/><br/>
                      <xsl:for-each select="tareas/tarea">

                          <span class="titulo2"> Nombre de tarea: </span><xsl:value-of select="nombre_tarea"/><br/>
                          <span class="titulo2"> Duración: </span><xsl:value-of select="duracion_tarea"/><br/>
                          <span class="titulo2"> Horas diarias: </span><xsl:value-of select="horas_diarias"/><br/>
                    </xsl:for-each>
                      <span class="titulo2"> Fecha de inicio: </span><xsl:value-of select="fecha_inicio"/><br/>
                      <span class="titulo2"> Fecha de finalización: </span><xsl:value-of select="fecha_fin"/><br/>
                    </xsl:for-each>
                    </xsl:for-each>
                    </div>

                    <div class="cuadro">
                      <xsl:for-each select="experiencia_profesional">
                        <h2 class="titulo">Experiencia Profesional </h2>
                        <span class="titulo2"> Puesto: </span><xsl:value-of select="puesto_ocupado"/><br/>
                        <span class="titulo2"> Localida de empresa: </span><xsl:value-of select="localidad_empresa"/><br/>
                      <xsl:for-each select="tareas_desarrolladas/tarea">
                            <span class="titulo2"> Nombre de tarea: </span><xsl:value-of select="nombre_tarea"/><br/>
                            <span class="titulo2"> Duración de tarea: </span><xsl:value-of select="duracion_tarea"/><br/>
                            <span class="titulo2"> Horas diarias: </span><xsl:value-of select="horas_diarias"/><br/>
                      </xsl:for-each>
                        <span class="titulo2"> Fecha de comienzo: </span><xsl:value-of select="fecha_comienzo"/><br/>
                        <span class="titulo2"> Fecha de finalización: </span><xsl:value-of select="fecha_finalización"/><br/>
                      <xsl:for-each select="formación_complementaria/curso">
                            <span class="titulo2"> Nombre del curso: </span><xsl:value-of select="nombre_curso"/><br/>
                            <span class="titulo2"> Centro organizador: </span><xsl:value-of select="centro_organizador"/><br/>
                            <span class="titulo2"> Localidad de centro: </span><xsl:value-of select="localidad_centro"/><br/>
                            <span class="titulo2"> Inicio: </span><xsl:value-of select="inicio"/><br/>
                            <span class="titulo2"> Fin: </span><xsl:value-of select="fin"/><br/>
                            <span class="titulo2"> Horas: </span><xsl:value-of select="horas"/><br/>
                      </xsl:for-each>
                      </xsl:for-each>
                      </div>

                      <div class="cuadro">
                      <xsl:for-each select="idiomas">
                        <h2 class="titulo">Idiomas </h2>
                      <xsl:for-each select="idioma">
                            <span class="titulo2"> Nombre de idioma: </span><xsl:value-of select="nombre_idioma"/><br/>
                            <span class="titulo2"> Nivel de lectura: </span><xsl:value-of select="nivel_lectura"/><br/>
                            <span class="titulo2"> Nivel de habla: </span><xsl:value-of select="nivel_habla"/><br/>
                            <span class="titulo2"> Nivel de escritura: </span><xsl:value-of select="nivel_escritura"/><br/>
                          <xsl:for-each select="cursos_idioma/curso">
                                <span class="titulo2"> Nombre de curso de idioma: </span><xsl:value-of select="nombre_curso_idioma"/><br/>
                                <span class="titulo2"> Duracion del curso: </span><xsl:value-of select="duracion_curso"/><br/>
                                <span class="titulo2"> Certificación obtenida: </span><xsl:value-of select="certificación_obtenida"/><br/>
                          </xsl:for-each>
                          <xsl:for-each select="estancias_extranjero/estancia">
                                <span class="titulo2"> Lugar de estancia: </span><xsl:value-of select="lugar_estancia"/><br/>
                                <span class="titulo2"> País de estancia: </span><xsl:value-of select="pais_estancia"/><br/>
                                <span class="titulo2"> Duración de estancia: </span><xsl:value-of select="duracion_estancia"/><br/>
                          </xsl:for-each>
                      </xsl:for-each>
                      </xsl:for-each>
                      </div>

                      <div class="cuadro">
                        <xsl:for-each select="informatica">
                          <h2 class="titulo">Informática </h2>
                          <span class="titulo2"> Nivel: </span><xsl:value-of select="nivel"/><br/>
                        <xsl:for-each select="programas">
                              <span class="titulo2"> Nombre de programa: </span><xsl:value-of select="nombre_programa"/><br/>
                        </xsl:for-each>
                        </xsl:for-each>
                        </div>

                        <div class="cuadro">
                        <xsl:for-each select="datos_de_interes">
                          <h2 class="titulo">Datos de Interés </h2>
                          <span class="titulo2"> Carnet de conducir: </span><xsl:value-of select="carnet_conducir"/><br/>
                          <span class="titulo2"> Disponibilidad Geográfica: </span><xsl:value-of select="disponibilidad_geografica"/><br/>
                          <span class="titulo2"> Incorporación inmediata: </span><xsl:value-of select="incorporacion_inmediata"/><br/>
                        <xsl:for-each select="habilidades/habilidad">
                              <span class="titulo2"> Nombre de habilidad: </span><xsl:value-of select="nombre_habilidad"/><br/>
                        </xsl:for-each>
                        <xsl:for-each select="aficiones/aficion">
                              <span class="titulo2"> Nombre de afición: </span><xsl:value-of select="nombre_aficion"/><br/>
                        </xsl:for-each>
                        </xsl:for-each>
                        </div>
                      </div>
               </xsl:for-each>

             </body>
        </html>

    </xsl:template>
</xsl:stylesheet>
