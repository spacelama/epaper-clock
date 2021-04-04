#ifndef EPAPER_DISPLAY_H
#define EPAPER_DISPLAY_H

void display_setup(void);
void display_time(char *time_string, char *temp_string);
void display_fullupdate(void);
void display_partialupdate(void);
void display_powerdown(void);

#endif
