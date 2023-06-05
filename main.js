const { app, Menu } = require("electron");

app.whenReady().then(() => {
  const window = require("./src/window");
  mainWindow = window.createBrowserWindow(app);
  mainWindow.maximize();
  mainWindow.loadURL("http://localhost:3000");
});

app.on("window-all-closed", () => {
  if (process.platform !== "darwin") {
    app.quit();
  }
});
