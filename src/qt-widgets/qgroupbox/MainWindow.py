# -*- coding: utf-8 -*-
"""."""

import sys

from PySide6 import QtCore, QtWidgets

APPLICATION_NAME = 'br.com.justcode.Qt'
ORGANIZATION_NAME = APPLICATION_NAME.split('.')[2]
ORGANIZATION_DOMAIN = '.'.join(APPLICATION_NAME.split('.')[0:3])


class MainWindow(QtWidgets.QMainWindow):
    def __init__(self, parent=None, **kwargs):
        super().__init__(parent=parent)
        self.application = kwargs.get('application')

        window_size = QtCore.QSize(960, 540)
        self.resize(window_size)
        self.setMinimumSize(window_size)
        self.setWindowTitle('Python - PySide6 - Qt')

        vbox = QtWidgets.QVBoxLayout()

        central_widget = QtWidgets.QWidget()
        central_widget.setLayout(vbox)
        self.setCentralWidget(central_widget)

        v_group_box = QtWidgets.QVBoxLayout()
        for i in range(1, 5):
            radio_button = QtWidgets.QCheckBox()
            radio_button.setText(f'Item {i}.')
            v_group_box.addWidget(radio_button)

        group_box = QtWidgets.QGroupBox()
        group_box.setTitle('QGroupBox title.')
        group_box.setLayout(v_group_box)
        vbox.addWidget(group_box)


def main() -> None:
    application = QtWidgets.QApplication(sys.argv)
    application.setApplicationDisplayName(APPLICATION_NAME)
    application.setApplicationName(APPLICATION_NAME)
    application.setDesktopFileName(APPLICATION_NAME)
    application.setOrganizationName(ORGANIZATION_NAME)
    application.setOrganizationDomain(ORGANIZATION_DOMAIN)

    if QtCore.QSysInfo.productType() == 'windows':
        from ctypes import windll

        windll.shell32.SetCurrentProcessExplicitAppUserModelID(
            APPLICATION_NAME,
        )

    window = MainWindow(application=application)
    window.show()

    sys.exit(application.exec())


if __name__ == '__main__':
    main()
