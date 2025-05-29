#ifndef SETUPWINDOW_H
#define SETUPWINDOW_H

#include <QObject>

class setupWindow : public QObject
{
    Q_OBJECT
public:
    explicit setupWindow(QObject *parent = 0);

    Q_INVOKABLE void getDifficulty(int dt, int ds);

signals:

public slots:

private:
    int d_time = 0;
    int d_size = 0;
};

#endif // SETUPWINDOW_H
