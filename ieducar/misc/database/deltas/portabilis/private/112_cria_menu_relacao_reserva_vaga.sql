
-- @author   Caroline Salib Canto <caroline@portabilis.com.br>
-- @license  @@license@@
-- @version  $Id$


insert into portal.menu_submenu values (999826, 55, 2,'Relação de reserva de vagas por escola', 'module/Reports/RelacaoReservaVaga', null, 3);
insert into portal.menu_funcionario values(1,0,0,999826);
insert into pmicontrolesis.menu values (999826, 999826, 999300, 'Relação de reserva de vagas por escola', 0, 'module/Reports/RelacaoReservaVaga', '_self', 1, 15, 192);
insert into pmieducar.menu_tipo_usuario values(1,999826,1,0,1);

--undo

delete from pmieducar.menu_tipo_usuario where ref_cod_menu_submenu = 999826;
delete from pmicontrolesis.menu where cod_menu = 999826;
delete from portal.menu_funcionario where ref_cod_menu_submenu = 999826;
delete from portal.menu_submenu where cod_menu_submenu = 999826;