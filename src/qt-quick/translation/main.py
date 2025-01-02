# -*- coding: utf-8 -*-
"""."""

import pathlib
import sys

from PySide6 import QtCore, QtGui, QtQml

BASE_DIR = pathlib.Path(__file__).resolve().parent
QML_FILE = BASE_DIR / 'main.qml'
LOCALES = BASE_DIR / 'locales'

APPLICATION_NAME = 'br.com.justcode.Qt'
ORGANIZATION_NAME = APPLICATION_NAME.split('.')[2]
ORGANIZATION_DOMAIN = '.'.join(APPLICATION_NAME.split('.')[0:3])


def main() -> None:
    application = QtGui.QGuiApplication(sys.argv)
    application.setApplicationDisplayName(APPLICATION_NAME)
    application.setApplicationName(APPLICATION_NAME)
    application.setDesktopFileName(APPLICATION_NAME)
    application.setOrganizationName(ORGANIZATION_NAME)
    application.setOrganizationDomain(ORGANIZATION_DOMAIN)

    loc = QtCore.QLocale.system()
    # loc = QtCore.QLocale(QtCore.QLocale.Portuguese, QtCore.QLocale.Brazil)
    translator = QtCore.QTranslator(application)
    if translator.load(
            QtCore.QLocale(loc), APPLICATION_NAME, '.', str(LOCALES)
    ):
        application.installTranslator(translator)

    if QtCore.QSysInfo.productType() == 'windows':
        from ctypes import windll

        windll.shell32.SetCurrentProcessExplicitAppUserModelID(
            APPLICATION_NAME,
        )

    engine = QtQml.QQmlApplicationEngine()
    engine.load(QtCore.QUrl.fromLocalFile(QML_FILE))

    if not engine.rootObjects():
        sys.exit(-1)

    sys.exit(application.exec())


if __name__ == '__main__':
    main()
