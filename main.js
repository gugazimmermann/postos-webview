const { app, Menu } = require("electron");

app.whenReady().then(() => {
  const window = require("./src/window");
  mainWindow = window.createBrowserWindow(app);
  mainWindow.maximize();
  // mainWindow.loadURL("http://postos.touchsistemas.com.br");
  mainWindow.loadURL("http://localhost:3000");
  mainWindow.once('ready-to-show', () => {
    mainWindow.show()
  })
});

app.on("window-all-closed", () => {
  if (process.platform !== "darwin") {
    app.quit();
  }
});
