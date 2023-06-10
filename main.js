const { app, protocol } = require("electron");

protocol.registerSchemesAsPrivileged([
  {
    scheme: "app",
    privileges: { standard: true, secure: true, bypassCSP: true },
  },
]);

app.whenReady().then(() => {
  const window = require("./src/window");
  mainWindow = window.createBrowserWindow(app);
  mainWindow.maximize();
  mainWindow.loadURL("http://postos.touchsistemas.com.br");
  // mainWindow.loadURL("http://localhost:3000");
  mainWindow.once("ready-to-show", () => {
    mainWindow.show();
  });
});

app.on("window-all-closed", () => {
  if (process.platform !== "darwin") {
    app.quit();
  }
});
