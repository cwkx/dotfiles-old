#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <time.h>
#include <X11/Xlib.h>

static Display *dpy;

void setstatus(char *str)
{
	XStoreName(dpy, DefaultRootWindow(dpy), str);
	XSync(dpy, False);
}

char *getdatetime()
{
	char *buf;
	time_t result;
	struct tm *resulttm;

	if ((buf = malloc(sizeof(char)*65)) == NULL)
	{
		fprintf(stderr, "Cannot allocate memory for buf.\n");
		exit(1);
	}
	result = time(NULL);
	resulttm = localtime(&result);
	if (resulttm == NULL)
	{
		fprintf(stderr, "Error getting localtime.\n");
		exit(1);
	}
	if (!strftime(buf, sizeof(char)*65-1, "%a %b %d %H:%M:%S", resulttm))
	{
		fprintf(stderr, "strftime is 0.\n");
		exit(1);
	}

	return buf;
}

float getbattery()
{
	FILE *fd;
	int energy_now, energy_full, voltage_now;

	fd = fopen("/sys/class/power_supply/BAT0/energy_now", "r");
	if (fd == NULL)
	{
		fprintf(stderr, "Error opening energy_now.\n");
		return -1;
	}
	fscanf(fd, "%d", &energy_now);
	fclose(fd);


	fd = fopen("/sys/class/power_supply/BAT0/energy_full", "r");
	if(fd == NULL)
	{
		fprintf(stderr, "Error opening energy_full.\n");
		return -1;
	}
	fscanf(fd, "%d", &energy_full);
	fclose(fd);

	fd = fopen("/sys/class/power_supply/BAT0/voltage_now", "r");
	if(fd == NULL)
	{
		fprintf(stderr, "Error opening voltage_now.\n");
		return -1;
	}
	fscanf(fd, "%d", &voltage_now);
	fclose(fd);


	return ((float)energy_now * 1000 / (float)voltage_now) * 100 / ((float)energy_full * 1000 / (float)voltage_now);
}

int main(void)
{
	char *status;
	char *datetime;
	float bat0;

	if (!(dpy = XOpenDisplay(NULL)))
	{
		fprintf(stderr, "Cannot open display.\n");
		return 1;
	}

	if ((status = malloc(200)) == NULL)
		exit(1);

	for (;;sleep(1))
	{
		datetime = getdatetime();

#ifdef BATTERY
		bat0 = getbattery();
		snprintf(status, 200, " %.0lf%% %s ", bat0, datetime);
#else
		snprintf(status, 200, " %s ", datetime);
#endif

		free(datetime);
		setstatus(status);
	}

	free(status);
	XCloseDisplay(dpy);

	return 0;
}
