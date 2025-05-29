#include "setupwindow.h"

#include <QDebug>

setupWindow::setupWindow(QObject *parent) : QObject(parent)
{

}

void setupWindow::getDifficulty(int dt, int ds)
{
    this->d_time = dt;
    this->d_size = ds;
    qDebug()<<"The difficulties are loaded";
}
