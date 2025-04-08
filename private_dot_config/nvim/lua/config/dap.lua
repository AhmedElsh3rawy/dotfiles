local dap = require('dap')

require('dap').adapters['pwa-node'] = {
    type = 'server',
    host = 'localhost',
    port = '${port}',
    executable = {
        command = 'node',
        -- 💀 Make sure to update this path to point to your installation
        args = {
            os.getenv('HOME') .. '/.local/share/nvim/mason/packages/js-debug-adapter/js-debug/src/dapDebugServer.js',
            '${port}',
        },
    },
}

for _, language in ipairs({ 'typescript', 'javascript' }) do
    dap.configurations[language] = {
        {
            type = 'pwa-node',
            request = 'launch',
            name = 'Launch file',
            program = '${file}',
            cwd = '${workspaceFolder}',
            runtimeExecutable = 'node',
            stopOnEntry = true,
            onExit = function()
                print('Debug session exited')
            end,
        },
        -- Debug nodejs processes (make sure to add --inspect when you run the process)
        {
            type = 'pwa-node',
            request = 'attach',
            name = 'Attach',
            processId = require('dap.utils').pick_process,
            cwd = vim.fn.getcwd(),
            sourceMaps = true,
        },
    }
end
