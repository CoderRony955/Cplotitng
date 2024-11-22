import matplotlib.pyplot as plt
from rich.console import Console
from builtins import *
from rich.traceback import install
import logging
import numpy as np


#  _____  _       _   _
# |  __ \| |     | | (_)
# | |__) | | ___ | |_ _ _ __   __ _  ___  _ __  ___
# |  ___/| |/ _ \| __| | '_ \ / _` |/ _ \| '_ \/ __|
# | |    | | (_) | |_| | | | | (_| | (_) | |_) \__ \
# |_|    |_|\___/ \__|_|_| |_|\__, |\___/| .__/|___/
#                              __/ |     | |
#                             |___/      |_|

console = Console()
install()

cdef class plotops:

    cdef str title
    cdef str x_axis
    cdef str y_axis

    def __init__(self, title, x_axis, y_axis):
        self.title = title
        self.x_axis = x_axis
        self.y_axis = y_axis
    
    def plotchart(self):
        try:
            dec = "Plot chart"
            console.print(f"[bold magenta]{dec}[/bold magenta]")
            x_label = np.array([int(x) for x in input("X comma seperated values: ").split(",")])
            y_label = np.array([int(y) for y in input("Y comma seperated values: ").split(",")])
            plt.plot(x_label, y_label)
            plt.title(self.title)
            plt.title(self.title)
            plt.xlabel(self.x_axis)
            plt.ylabel(self.y_axis)
            plt.grid(True)
            plt.show()
        except ValueError as e:
            logging.error("ValueError occured: {}".format(e))

    def scatterplot(self):
        try:
            dec = "Scatter plot"
            console.print(f"[bold blue]{dec}[/bold blue]")
            x_label = np.array([int(x) for x in input("X comma seperated values: ").split(",")])
            y_label = np.array([int(y) for y in input("Y comma seperated values: ").split(",")])
            plt.scatter(x_label, y_label)
            plt.grid(True)
            plt.title(self.title)
            plt.xlabel(self.x_axis)
            plt.ylabel(self.y_axis)
            plt.show()
        except ValueError as e:
            logging.error("ValueError occured: {}".format(e))
    
    def stemplot(self):
        try:
            dec = "Stem plot"
            console.print(f"[bold yellow]{dec}[/bold yellow]")
            x_value = np.array([int(x) for x in input("X comman seperated values: ").split(",")])
            y_value = np.array([int(y) for y in input("Y comman seperated values: ").split(",")])
            plt.stem(x_value, y_value)
            plt.xlabel(self.x_axis)
            plt.ylabel(self.y_axis)
            plt.grid(True)
            plt.title(self.title)
            plt.show()
        except ValueError as e:
            logging.error("ValueError occured: {}".format(e))
    
    def steplot(self):
        try:
            dec = "Step plot"
            console.print(f"[bold green]{dec}[/bold green]")
            x_value = np.array([int(x) for x in input("X comma seperated values: ").split(",")])
            y_value = np.array([int(y) for y in input("Y comma seperated values: ").split(",")])
            plt.step(x_value, y_value)
            plt.xlabel(self.x_axis)
            plt.ylabel(self.y_axis)
            plt.grid(True)
            plt.title(self.title)
            plt.show()
        except ValueError as e:
            logging.error("ValueError occured: {}".format(e))
    
    def fill_btw(self):
        try:
            dec = "Fill between plot"
            console.print(f"[bold gray]{dec}[/bold gray]")
            x_value = np.array([int(x) for x in input("X comma seperated values: ").split(",")])
            y1_value = np.array([int(y1) for y1 in input("Y2 comma seperated values: ").split(",")])
            y2_value = np.array([int(y2) for y2 in input("Y2 comma seperated values: ").split(",")])
            plt.fill_between(x_value, y1_value, y2_value)
            plt.xlabel(self.x_axis)
            plt.xlabel(self.x_axis)
            plt.grid(True)
            plt.title(self.title)
            plt.show()
    
        except ValueError as e:
            logging.error("ValueError occured: {}".format(e))


cdef class randnumplot:

    cdef str title
    cdef str x_axis
    cdef str y_axis

    def __init__(self, title, x_axis, y_axis):
        self.title = title
        self.x_axis = x_axis
        self.y_axis = y_axis
    
    def randplot(self, range_):
        try:
            dec = "Random numbers plot"
            console.print(f"[italic blue]{dec}[/italic blue]")
            x_value = np.random.randn(range_)
            y_value = np.random.randn(range_)
            plt.plot(x_value, y_value)
            plt.title(self.title)
            plt.xlabel(self.x_axis)
            plt.ylabel(self.y_axis)
            plt.grid(True)
            plt.show()
            
        except ValueError as e:
            logging.error("ValueError occured: {}".format(e))

    def randscatter(self, range_):
        try:
            dec = "Random numbers scatterplot"
            console.print(f"[italic blue]{dec}[/italic blue]")
            x_value = np.random.randn(range_)
            y_value = np.random.randn(range_)
            plt.scatter(x_value, y_value)
            plt.title(self.title)
            plt.xlabel(self.x_axis)
            plt.ylabel(self.y_axis)
            plt.grid(True)
            plt.show()
            
        except ValueError as e:
            logging.error("ValueError occured: {}".format(e))

    def randstem(self, range_):
        try:
            dec = "Random numbers stemplot"
            console.print(f"[italic blue]{dec}[/italic blue]")
            x_value = np.random.randn(range_)
            y_value = np.random.randn(range_)
            plt.stem(x_value, y_value)
            plt.title(self.title)
            plt.xlabel(self.x_axis)
            plt.ylabel(self.y_axis)
            plt.grid(True)
            plt.show()
            
        except ValueError as e:
            logging.error("ValueError occured: {}".format(e))

    def randstep(self, range_):
        try:
            dec = "Random numbers stepplot"
            console.print(f"[italic blue]{dec}[/italic blue]")
            x_value = np.random.randn(range_)
            y_value = np.random.randn(range_)
            plt.step(x_value, y_value)
            plt.title(self.title)
            plt.xlabel(self.x_axis)
            plt.ylabel(self.y_axis)
            plt.grid(True)
            plt.show()
            
        except ValueError as e:
            logging.error("ValueError occured: {}".format(e))
    
    def randfillbtw(self, range_):
        try:
            dec = "Random numbers filled between"
            console.print(f"[italic blue]{dec}[/italic blue]")
            x_value = np.random.randn(range_)
            y1_value = np.random.randn(range_)
            y2_value = np.random.randn(range_)
            plt.fill_between(x_value, y1_value, y2_value)
            plt.grid(True)
            plt.title(self.title)
            plt.xlabel(self.x_axis)
            plt.ylabel(self.y_axis)
            plt.show()
        except ValueError as e:
            logging.error("ValueError occured: {}".format(e))

