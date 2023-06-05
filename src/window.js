const path = require("path");
const { BrowserWindow } = require("electron");

exports.createBrowserWindow = () => {
  return new BrowserWindow({
    width: 1024,
    height: 768,
    autoHideMenuBar: true,
    //titleBarStyle: 'hidden',
    //frame: false,
    backgroundColor: "#fff",
    webPreferences: {
      nativeWindowOpen: true,
      devTools: true,
      contextIsolation: true,
      webviewTag: true,
    },
  });
};
