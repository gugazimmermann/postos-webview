const path = require("path");
const { BrowserWindow } = require("electron");

exports.createBrowserWindow = () => {
  return new BrowserWindow({
    width: 1024,
    height: 768,
    center: true,
    resizable: false,
    autoHideMenuBar: true,
    backgroundColor: "#f1f5f9",
    icon: path.join(__dirname, "assets/icons/png/64x64.png"),
    webPreferences: {
      nativeWindowOpen: true,
      devTools: true,
      contextIsolation: true,
      webviewTag: true,
    },
    show: false,
  });
};
