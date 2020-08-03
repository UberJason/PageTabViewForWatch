# PageTabViewStyle for watchOS Layout Bug

In watchOS 7, PageTabViewStyle was introduced to support paging. Unfortunately, when attempting to use the PageTabViewStyle in a less-than-full-screen size, the content views don't align well. See screenshots below.

<img width=1000 src="https://github.com/UberJason/PageTabViewForWatch/blob/main/Simulator%20%2B%20Code.png">
<img src="https://github.com/UberJason/PageTabViewForWatch/blob/main/Simulator.png">

Steps to reproduce:
1. Run this project in a simulator.
2. Observe the layout in the preview, in the application, and in the view debugger.

From the view debugger, it appears that although the PageController is sized appropriately, the hosting controller still assumes full size, and also aligns its content at the bottom. Even attempting to enclose the content in an explicit frame with `.top` alignment doesn't appear to help.

<img width=1000 src="https://github.com/UberJason/PageTabViewForWatch/blob/main/View%20Debugger.png">