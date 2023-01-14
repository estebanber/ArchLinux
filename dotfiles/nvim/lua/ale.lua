vim.g.ale_sign_error = '⚡'
vim.g.ale_sign_warning = '•'
vim.g.ale_c_cc_options = '-std=c11 -Wall -Wextra'
vim.g.ale_c_cppcheck_options = '--enable=all --enable=style'
vim.g.ale_c_build_dir = 'build'
vim.g.ale_c_clangtidy_checks = {
    'clang-analyzer-*',
    'concurrency-*',
    'performance-*',
    'portability-*',
    'readability-*',
    'bugprone*',
    'modernize-*',
    'misc-*',
    'cert-err34-c',
    'cert-flp30-c'
}
vim.g.ale_c_parse_makefile = 1
vim.g.ale_parse_compile_commands = 1
vim.g.ale_completion_enabled = 0
vim.g.ale_completion_autoimport = 1
vim.g.ale_echo_msg_format = '[%linter%] %s [%severity%]'

vim.g.ale_linters = {c= {"ccls","clangtidy","flawfinder"}}
--set omnifunc=ale#completion#OmniFunc
--highlight clear ALEErrorSign
--highlight clear ALEWarningSign
