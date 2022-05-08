/****************************************************************************
** Meta object code from reading C++ file 'MultiRobotGoalSelector.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.12.8)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "include/tuw_multi_robot_rviz/MultiRobotGoalSelector.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'MultiRobotGoalSelector.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.12.8. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
struct qt_meta_stringdata_tuw_multi_robot_rviz__MultiRobotGoalSelector_t {
    QByteArrayData data[3];
    char stringdata0[63];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_tuw_multi_robot_rviz__MultiRobotGoalSelector_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_tuw_multi_robot_rviz__MultiRobotGoalSelector_t qt_meta_stringdata_tuw_multi_robot_rviz__MultiRobotGoalSelector = {
    {
QT_MOC_LITERAL(0, 0, 44), // "tuw_multi_robot_rviz::MultiRo..."
QT_MOC_LITERAL(1, 45, 16), // "onRobotNrChanged"
QT_MOC_LITERAL(2, 62, 0) // ""

    },
    "tuw_multi_robot_rviz::MultiRobotGoalSelector\0"
    "onRobotNrChanged\0"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_tuw_multi_robot_rviz__MultiRobotGoalSelector[] = {

 // content:
       8,       // revision
       0,       // classname
       0,    0, // classinfo
       1,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // slots: name, argc, parameters, tag, flags
       1,    0,   19,    2, 0x09 /* Protected */,

 // slots: parameters
    QMetaType::Void,

       0        // eod
};

void tuw_multi_robot_rviz::MultiRobotGoalSelector::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        auto *_t = static_cast<MultiRobotGoalSelector *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: _t->onRobotNrChanged(); break;
        default: ;
        }
    }
    Q_UNUSED(_a);
}

QT_INIT_METAOBJECT const QMetaObject tuw_multi_robot_rviz::MultiRobotGoalSelector::staticMetaObject = { {
    &rviz::Tool::staticMetaObject,
    qt_meta_stringdata_tuw_multi_robot_rviz__MultiRobotGoalSelector.data,
    qt_meta_data_tuw_multi_robot_rviz__MultiRobotGoalSelector,
    qt_static_metacall,
    nullptr,
    nullptr
} };


const QMetaObject *tuw_multi_robot_rviz::MultiRobotGoalSelector::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *tuw_multi_robot_rviz::MultiRobotGoalSelector::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_tuw_multi_robot_rviz__MultiRobotGoalSelector.stringdata0))
        return static_cast<void*>(this);
    return rviz::Tool::qt_metacast(_clname);
}

int tuw_multi_robot_rviz::MultiRobotGoalSelector::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = rviz::Tool::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 1)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 1;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 1)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 1;
    }
    return _id;
}
QT_WARNING_POP
QT_END_MOC_NAMESPACE
