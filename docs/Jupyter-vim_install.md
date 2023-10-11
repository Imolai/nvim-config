# jupyter-vim installation log

Follow the description <https://github.com/jupyter-vim/jupyter-vim>.

And:

- python3 -m pip install jupyter pyqt5
- vi lua/plugins.lua
  Add section:
  ```lua
    {
      'jupyter-vim/jupyter-vim',
      config = function()
          -- Here, you can add configuration specific to jupyter-vim
      end
    },
  ```
- sudo apt install libxcb-icccm4 libxcb-image0 libxcb-keysyms1 libxcb-render-util0 libxcb-xinerama0 libxcb-xkb1 libxkbcommon-x11-0
- sudo apt install plocate
- locate libqxcb.so
- export QT_QPA_PLATFORM_PLUGIN_PATH=$HOME/.local/lib/python3.10/site-packages/PyQt5/Qt5/plugins/platforms/
  You can add the above line to your `.bashrc` to make the change permanent.
- export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$HOME/.local/lib/python3.10/site-packages/PyQt5/Qt5/lib/
  You can add the above line to your `.bashrc` to make the change permanent.
- jupyter qtconsole --generate-config
- jupyter qtconsole --generate-config
- vi ~/.jupyter/jupyter_qtconsole_config.py
  `c.ConsoleWidget.include_other_output = True`
- vi ~/.jupyter/jupyter_console_config.py
  `c.ZMQTerminalInteractiveShell.include_other_output = True`
- jupyter qtconsole &
- vi empty.py
