# Debugging Tips

This file should help you with information on how to debug your code using Vivado.

## Compilation errors

Vivado has a process running at the background continuously checking your code for syntax error. When there is syntax error, it looks like this:

![debugging messages](pics/debug/debug_messages.png)

You always want to debug the first error first because the following errors could potentially caused by the first one. In that case, fixing the first one will also fix a lot of following errors.

If you click on the blue text, it will lead you to the exact location where that error was reported. However, **it is not necessary the exact error location**. You need to look at that line and the lines before it for error.

![debug\_goto\_first\_error](pics/debug/debug_goto_first_error.png)

After fixing the error, the "Messages" tab will auto refresh error list:

![debug\_next\_error](pics/debug/debug_next_error.png)

You should always read the error message first before you attempt to make any fix. In the case of previous picture, the error message says
"syntax error near '.'". So if you look at where "." is on that line, it turns out that it's supposed to be a "," instead of ".".

It is recommended to fix all the syntax error first before run simulation. But running simulation can also report error locations. For example,
if we leave the syntax error, and try to run simulation, we will have this:

![debug\_simulation\_error](pics/debug/debug_simulation_error.png)

When this happens, just click on OK and skip the next error messages window as well:

![debug\_simulation\_error2](pics/debug/debug_simulation_error2.png)

Then you should look at the "Tcl Console" for the first error messages:

![debug\_console\_error\_messages](pics/debug/debug_console_error_messages.png)

In this case the error is just a syntax error. However, errors occured when running simulation is not restricted to syntax errors, it could be missing
modules or a port you are trying to use does not exist and so on. Again, you need to read the error messages to understand what it is complaining
in order to fix it.
