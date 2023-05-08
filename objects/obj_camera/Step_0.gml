if(instance_exists(obj_sr_barriga)) {
	x = obj_sr_barriga.x - (camera_largura / 2);
	y = obj_sr_barriga.y - (camera_altura / 2);

	x = clamp(x,0,room_width-camera_largura);
	y = clamp(y,0,room_height-camera_altura);

	camera_set_view_pos(view_camera[0], x, y);
}