/****************************************************************************
** Meta object code from reading C++ file 'VoronoiSegmentDisplay.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.12.8)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "include/tuw_multi_robot_rviz/VoronoiSegmentDisplay.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'VoronoiSegmentDisplay.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.12.8. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_tuw_multi_robot_rviz__VoronoiSegmentDisplay_t {
    QByteArrayData data[5];
    char stringdata0[97];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_tuw_multi_robot_rviz__VoronoiSegmentDisplay_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_tuw_multi_robot_rviz__VoronoiSegmentDisplay_t qt_meta_stringdata_tuw_multi_robot_rviz__VoronoiSegmentDisplay = {
    {
QT_MOC_LITERAL(0, 0, 43), // "tuw_multi_robot_rviz::Voronoi..."
QT_MOC_LITERAL(1, 44, 15), // "updatePathColor"
QT_MOC_LITERAL(2, 60, 0), // ""
QT_MOC_LITERAL(3, 61, 15), // "updatePathScale"
QT_MOC_LITERAL(4, 77, 19) // "updateHistoryLength"

    },
    "tuw_multi_robot_rviz::VoronoiSegmentDisplay\0"
    "updatePathColor\0\0updatePathScale\0"
    "updateHistoryLength"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_tuw_multi_robot_rviz__VoronoiSegmentDisplay[] = {

 // content:
       8,       // revision
       0,       // classname
       0,    0, // classinfo
       3,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: name, argc, parameters, tag, flags
       1,    0,   29,    2, 0x08 /* Private */,
       3,    0,   30,    2, 0x08 /* Private */,
       4,    0,   31,    2, 0x08 /* Private */,

 // slots: parameters
    QMetaType::Void,
    QMetaType::Void,
    QMetaType::Void,

       0        // eod
};

void tuw_multi_robot_rviz::VoronoiSegmentDisplay::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        auto *_t = static_cast<VoronoiSegmentDisplay *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->updatePathColor(); break;
        case 1: _t->updatePathScale(); break;
        case 2: _t->updateHistoryLength(); break;
        default: ;
        }
    }
    Q_UNUSED(_a);
}

QT_INIT_METAOBJECT const QMetaObject tuw_multi_robot_rviz::VoronoiSegmentDisplay::staticMetaObject = { {
    &rviz::MessageFilterDisplay<tuw_multi_robot_msgs::Graph>::staticMetaObject,
    qt_meta_stringdata_tuw_multi_robot_rviz__VoronoiSegmentDisplay.data,
    qt_meta_data_tuw_multi_robot_rviz__VoronoiSegmentDisplay,
    qt_static_metacall,
    nullptr,
    nullptr
} };


const QMetaObject *tuw_multi_robot_rviz::VoronoiSegmentDisplay::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *tuw_multi_robot_rviz::VoronoiSegmentDisplay::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_tuw_multi_robot_rviz__VoronoiSegmentDisplay.stringdata0))
        return static_cast<void*>(this);
    return rviz::MessageFilterDisplay<tuw_multi_robot_msgs::Graph>::qt_metacast(_clname);
}

int tuw_multi_robot_rviz::VoronoiSegmentDisplay::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = rviz::MessageFilterDisplay<tuw_multi_robot_msgs::Graph>::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 3)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 3;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 3)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 3;
    }
    return _id;
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
