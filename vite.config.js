import { defineConfig } from "vite"
import createReScriptPlugin from '@jihchi/vite-plugin-rescript';
import { resolve } from "node:path"

export default defineConfig({
  plugins: [createReScriptPlugin({
    loader: {
      /**
       * 這裏不這樣寫的話，無法在`index.html`直接`import` .res文件
       */
      output: resolve(__dirname),
    }
  })],
})
