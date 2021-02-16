import sys
from PyQt5.QtWidgets import QApplication, QMainWindow, QLabel
from PyQt5.QtCore import Qt
from pathlib import Path

#Subclass QMainWindow to customize your application's main wind
class MainWindow(QMainWindow):
    headletterStr = ""

    def __init__(self, *args, **kwargs):
        headletterStr = Path('headletterfile.txt').read_text()
        print(headletterStr)

        super(MainWindow, self).__init__(*args, **kwargs)

        self.setWindowTitle("Head-letter-Window")

        label = QLabel(headletterStr)

        # the 'QT' namespace has a lot of attributes to customis
        # widgets. See: httpL//doc.qt.io/qt-5/qt.html
        #label.setAlignment(Qt.AlignCenter)

        #wrapper text in label
        label.setWordWrap(True)

        # Set the central wiget of the Window. Widget will expa
        # to take up all the space in the window by default
        self.setCentralWidget(label)



app = QApplication(sys.argv)

window = MainWindow()
window.show() #IMPORTANT ! - Windows are hidden by default

# Start the event loop
app.exec_()
