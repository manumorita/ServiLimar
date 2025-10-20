
INSERT INTO TipoUsuario (tipo_usuario, descripcion) VALUES
(1, 'Cliente'),
(2, 'Empleado'),
(3, 'Administrador'),
(4, 'Supervisor'),
(5, 'Gerente'),
(6, 'Asistente'),
(7, 'Técnico'),
(8, 'Operario'),
(9, 'Recepcionista'),
(10, 'Coordinador');


INSERT INTO Ciudad (ciudad_id, nombre_ciudad, codigo_postal) VALUES
(1, 'Bogotá', '110111'),
(2, 'Medellín', '050021'),
(3, 'Cali', '760010'),
(4, 'Barranquilla', '080020'),
(5, 'Cartagena', '130001'),
(6, 'Pereira', '660003'),
(7, 'Bucaramanga', '680005'),
(8, 'Manizales', '170001'),
(9, 'Santa Marta', '470001'),
(10, 'Cúcuta', '540001');

INSERT INTO Usuario (usuario_id, nombre, apellido, tipo_usuario, condiciones, ciudad_id) VALUES
(1, 'Carlos', 'Pérez', 1, 'Aceptadas', 1),
(2, 'Ana', 'Gómez', 1, 'Aceptadas', 2),
(3, 'Luis', 'Ramírez', 2, 'Aceptadas', 3),
(4, 'María', 'López', 3, 'Aceptadas', 4),
(5, 'Jorge', 'Martínez', 2, 'Aceptadas', 5),
(6, 'Sofía', 'Torres', 1, 'Aceptadas', 1),
(7, 'Pedro', 'Rojas', 4, 'Aceptadas', 2),
(8, 'Laura', 'Castro', 5, 'Aceptadas', 3),
(9, 'Camila', 'Ortiz', 6, 'Aceptadas', 6),
(10, 'Andrés', 'Vargas', 7, 'Aceptadas', 7);


INSERT INTO Departamento (departamento_id, nombre_departamento) VALUES
(1, 'Limpieza'),
(2, 'Mantenimiento'),
(3, 'Atención al Cliente'),
(4, 'Administración'),
(5, 'Logística'),
(6, 'Operaciones'),
(7, 'Recursos Humanos'),
(8, 'Seguridad'),
(9, 'Tecnología'),
(10, 'Compras');

INSERT INTO Empleado (empleado_id, usuario_id, cargos, departamento_id) VALUES
(1, 3, 'Técnico de mantenimiento', 2),
(2, 5, 'Auxiliar de limpieza', 1),
(3, 7, 'Supervisor de operaciones', 3),
(4, 8, 'Gerente general', 4),
(5, 9, 'Asistente administrativo', 4),
(6, 10, 'Coordinador de logística', 5),
(7, 3, 'Técnico eléctrico', 2),
(8, 5, 'Limpieza general', 1),
(9, 7, 'Supervisor de planta', 6),
(10, 9, 'Recepcionista', 3);

INSERT INTO Servicio (servicio_id, nombre, descripcion, estado) VALUES
(1, 'Limpieza de oficinas', 'Servicio de limpieza para oficinas y empresas', 'Activo'),
(2, 'Mantenimiento de equipos', 'Revisión y reparación de maquinaria', 'Activo'),
(3, 'Desinfección de espacios', 'Desinfección profesional de áreas cerradas', 'Activo'),
(4, 'Limpieza de vidrios', 'Limpieza especializada de ventanales altos', 'Activo'),
(5, 'Recolección de residuos', 'Recolección y disposición de residuos', 'Activo'),
(6, 'Pintura de fachadas', 'Servicio de pintura profesional', 'Inactivo'),
(7, 'Jardinería', 'Mantenimiento de zonas verdes', 'Activo'),
(8, 'Instalaciones eléctricas', 'Montaje y reparación de cableado', 'Activo'),
(9, 'Plomería', 'Reparaciones e instalaciones hidráulicas', 'Activo'),
(10, 'Aseo residencial', 'Limpieza integral de hogares', 'Activo');


INSERT INTO Turno (turno_id, usuario_id, servicio_id, empleado_id, fecha, hora_inicio, hora_fin, estado) VALUES
(1, 1, 1, 2, '2025-10-10', '08:00:00', '12:00:00', 'Completado'),
(2, 2, 2, 1, '2025-10-11', '09:00:00', '13:00:00', 'Pendiente'),
(3, 6, 3, 3, '2025-10-12', '10:00:00', '14:00:00', 'Completado'),
(4, 1, 4, 2, '2025-10-13', '07:00:00', '11:00:00', 'Cancelado'),
(5, 2, 5, 3, '2025-10-14', '13:00:00', '17:00:00', 'Pendiente'),
(6, 4, 6, 4, '2025-10-15', '08:00:00', '12:00:00', 'Completado'),
(7, 5, 7, 5, '2025-10-16', '09:00:00', '13:00:00', 'Pendiente'),
(8, 6, 8, 6, '2025-10-17', '10:00:00', '14:00:00', 'Completado'),
(9, 7, 9, 7, '2025-10-18', '11:00:00', '15:00:00', 'Pendiente'),
(10, 8, 10, 8, '2025-10-19', '07:00:00', '11:00:00', 'Pendiente');


INSERT INTO Medio (medio_id, tipo_medio) VALUES
(1, 'Correo electrónico'),
(2, 'SMS'),
(3, 'Llamada telefónica'),
(4, 'Notificación por app'),
(5, 'WhatsApp'),
(6, 'Telegram'),
(7, 'Push web'),
(8, 'Carta física'),
(9, 'Red social'),
(10, 'Fax');


INSERT INTO Notificacion (notificacion_id, usuario_id, medio_id, mensaje, fecha_envio, estado) VALUES
(1, 1, 1, 'Su servicio de limpieza ha sido completado', '2025-10-10', 'Enviado'),
(2, 2, 2, 'Recordatorio de su mantenimiento programado', '2025-10-11', 'Pendiente'),
(3, 6, 3, 'Su turno de desinfección está en curso', '2025-10-12', 'Enviado'),
(4, 1, 4, 'Actualización: su turno fue cancelado', '2025-10-13', 'Enviado'),
(5, 2, 5, 'Gracias por usar nuestros servicios', '2025-10-14', 'Enviado'),
(6, 3, 6, 'Confirmación de turno asignado', '2025-10-15', 'Enviado'),
(7, 4, 7, 'Notificación de cambio de estado', '2025-10-16', 'Pendiente'),
(8, 5, 8, 'Nuevo servicio disponible', '2025-10-17', 'Enviado'),
(9, 6, 9, 'Promoción especial del mes', '2025-10-18', 'Enviado'),
(10, 7, 10, 'Gracias por su confianza', '2025-10-19', 'Pendiente');
