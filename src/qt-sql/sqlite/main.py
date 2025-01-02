# -*- coding: utf-8 -*-
"""."""

import sys

from PySide6 import QtSql, QtWidgets

application = QtWidgets.QApplication(sys.argv)

db = QtSql.QSqlDatabase.addDatabase('QSQLITE')
db.setDatabaseName('meu_banco.db')
print(db.drivers())
if not db.open():
    print('Erro ao conectar ao banco de dados:', db.lastError().text())
    exit(1)
