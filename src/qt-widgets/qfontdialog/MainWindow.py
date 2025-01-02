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

        button = QtWidgets.QPushButton()
        button.setText('Open dialog')
        button.clicked.connect(self.on_button_clicked)
        vbox.addWidget(button)

    def on_button_clicked(self):
        dialog = QtWidgets.QFontDialog(self)
        dialog.setModal(True)
        print(dialog.currentFont())

        response = dialog.exec()
        if response:
            print(dialog.selectedFont())


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
