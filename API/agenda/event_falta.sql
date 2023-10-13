SET GLOBAL event_scheduler=ON;

SET time_zone = '-03:00';

CREATE DEFINER=`root`@`localhost` EVENT `update_falta` ON SCHEDULE EVERY 1 DAY STARTS '2023-10-12 00:01:00' ON COMPLETION NOT PRESERVE ENABLE DO 
    UPDATE `agenda-clinicas` SET status_agendamento = 'Faltou' WHERE status_agendamento = 'Agendado' AND data_agendamento < CURDATE();
